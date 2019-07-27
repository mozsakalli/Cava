/*
 * Copyright (C) 2019 Digitoy Games.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package java.nio;

import cava.c.CLib;
import cava.c.VoidPtr;

/**
 *
 * @author mustafa
 */
public abstract class Buffer {

    static final int UNSET_MARK = -1;

    protected int capacity;
    protected int position;
    protected int limit;
    protected boolean readonly;
    protected int mark;
    protected boolean isReadOnly;
    protected boolean ownsMemory;
    protected ByteOrder order;
    protected int elementSize;
    
    protected VoidPtr ptr;
    //keep reference to wrapped array for gc
    protected Object array;
    //keep reference to wrapped buffer for gc
    protected Object buffer;

    Buffer(int capacity, VoidPtr ptr, Object array, boolean ownsMemory) {
        if (capacity < 0) {
            throw new IllegalArgumentException("capacity < 0: " + capacity);
        }
        this.ptr = ptr;
        this.array = array;
        this.ownsMemory = ownsMemory;
        this.capacity = this.limit = capacity;
    }

    public final int capacity() {
        return capacity;
    }

    /**
     * Used for the scalar get/put operations.
     */
    void checkIndex(int index) {
        if (index < 0 || index >= limit) {
            throw new IndexOutOfBoundsException("index=" + index + ", limit=" + limit);
        }
    }

    /**
     * Used for the ByteBuffer operations that get types larger than a byte.
     */
    void checkIndex(int index, int sizeOfType) {
        if (index < 0 || index > limit - sizeOfType) {
            throw new IndexOutOfBoundsException("index=" + index + ", limit=" + limit
                    + ", size of type=" + sizeOfType);
        }
    }

    int checkGetBounds(int bytesPerElement, int length, int offset, int count) {
        int byteCount = bytesPerElement * count;
        if ((offset | count) < 0 || offset > length || length - offset < count) {
            throw new IndexOutOfBoundsException("offset=" + offset
                    + ", count=" + count + ", length=" + length);
        }
        if (byteCount > remaining()) {
            throw new BufferUnderflowException();
        }
        return byteCount;
    }

    int checkPutBounds(int bytesPerElement, int length, int offset, int count) {
        int byteCount = bytesPerElement * count;
        if ((offset | count) < 0 || offset > length || length - offset < count) {
            throw new IndexOutOfBoundsException("offset=" + offset
                    + ", count=" + count + ", length=" + length);
        }
        if (byteCount > remaining()) {
            throw new BufferOverflowException();
        }
        if (isReadOnly) {
            throw new ReadOnlyBufferException();
        }
        return byteCount;
    }

    void checkStartEndRemaining(int start, int end) {
        if (end < start || start < 0 || end > remaining()) {
            throw new IndexOutOfBoundsException("start=" + start + ", end=" + end
                    + ", remaining()=" + remaining());
        }
    }

    /**
     * Clears this buffer.
     * <p>
     * While the content of this buffer is not changed, the following internal
     * changes take place: the current position is reset back to the start of
     * the buffer, the value of the buffer limit is made equal to the capacity
     * and mark is cleared.
     *
     * @return this buffer.
     */
    public final Buffer clear() {
        position = 0;
        mark = UNSET_MARK;
        limit = capacity;
        return this;
    }

    /**
     * Flips this buffer.
     * <p>
     * The limit is set to the current position, then the position is set to
     * zero, and the mark is cleared.
     * <p>
     * The content of this buffer is not changed.
     *
     * @return this buffer.
     */
    public final Buffer flip() {
        limit = position;
        position = 0;
        mark = UNSET_MARK;
        return this;
    }

    /**
     * Returns true if {@code array} and {@code arrayOffset} won't throw. This
     * method does not return true for buffers not backed by arrays because the
     * other methods would throw {@code UnsupportedOperationException}, nor does
     * it return true for buffers backed by read-only arrays, because the other
     * methods would throw {@code ReadOnlyBufferException}.
     *
     * @since 1.6
     */
    public boolean hasArray() {
        return array != null;
    }

    /**
     * Indicates if there are elements remaining in this buffer, that is if
     * {@code position < limit}.
     *
     * @return {@code true} if there are elements remaining in this buffer,
     * {@code false} otherwise.
     */
    public final boolean hasRemaining() {
        return position < limit;
    }

    /**
     * Returns true if this is a direct buffer.
     *
     * @since 1.6
     */
    public boolean isDirect() {
        return array == null;
    }

    /**
     * Indicates whether this buffer is read-only.
     *
     * @return {@code true} if this buffer is read-only, {@code false}
     * otherwise.
     */
    public boolean isReadOnly() {
        return isReadOnly;
    }

    final void checkWritable() {
        if (isReadOnly) {
            throw new IllegalArgumentException("Read-only buffer");
        }
    }

    /**
     * Returns the limit of this buffer.
     *
     * @return the limit of this buffer.
     */
    public final int limit() {
        return limit;
    }

    /**
     * Sets the limit of this buffer.
     * <p>
     * If the current position in the buffer is in excess of
     * <code>newLimit</code> then, on returning from this call, it will have
     * been adjusted to be equivalent to <code>newLimit</code>. If the mark is
     * set and is greater than the new limit, then it is cleared.
     *
     * @param newLimit the new limit, must not be negative and not greater than
     * capacity.
     * @return this buffer.
     * @exception IllegalArgumentException if <code>newLimit</code> is invalid.
     */
    public final Buffer limit(int newLimit) {
        if (newLimit < 0 || newLimit > capacity) {
            throw new IllegalArgumentException("Bad limit (capacity " + capacity + "): " + newLimit);
        }

        limit = newLimit;
        if (position > newLimit) {
            position = newLimit;
        }
        if ((mark != UNSET_MARK) && (mark > newLimit)) {
            mark = UNSET_MARK;
        }
        return this;
    }

    /**
     * Marks the current position, so that the position may return to this point
     * later by calling <code>reset()</code>.
     *
     * @return this buffer.
     */
    public final Buffer mark() {
        mark = position;
        return this;
    }

    /**
     * Returns the position of this buffer.
     *
     * @return the value of this buffer's current position.
     */
    public final int position() {
        return position;
    }

    /**
     * Sets the position of this buffer.
     * <p>
     * If the mark is set and it is greater than the new position, then it is
     * cleared.
     *
     * @param newPosition the new position, must be not negative and not greater
     * than limit.
     * @return this buffer.
     * @exception IllegalArgumentException if <code>newPosition</code> is
     * invalid.
     */
    public final Buffer position(int newPosition) {
        positionImpl(newPosition);
        return this;
    }

    void positionImpl(int newPosition) {
        if (newPosition < 0 || newPosition > limit) {
            throw new IllegalArgumentException("Bad position (limit " + limit + "): " + newPosition);
        }

        position = newPosition;
        if ((mark != UNSET_MARK) && (mark > position)) {
            mark = UNSET_MARK;
        }
    }

    /**
     * Returns the number of remaining elements in this buffer, that is
     * {@code limit - position}.
     *
     * @return the number of remaining elements in this buffer.
     */
    public final int remaining() {
        return limit - position;
    }

    /**
     * Resets the position of this buffer to the <code>mark</code>.
     *
     * @return this buffer.
     * @exception InvalidMarkException if the mark is not set.
     */
    public final Buffer reset() {
        if (mark == UNSET_MARK) {
            throw new InvalidMarkException("Mark not set");
        }
        position = mark;
        return this;
    }

    /**
     * Rewinds this buffer.
     * <p>
     * The position is set to zero, and the mark is cleared. The content of this
     * buffer is not changed.
     *
     * @return this buffer.
     */
    public final Buffer rewind() {
        position = 0;
        mark = UNSET_MARK;
        return this;
    }

    public ByteOrder order() {
        return order;
    }
    
    /**
     * Returns a string describing this buffer.
     */
    @Override
    public String toString() {
        return getClass().getName()
                + "[position=" + position + ",limit=" + limit + ",capacity=" + capacity + "]";
    }

    @Override
    protected void finalize() throws Throwable {
        if(ownsMemory && ptr != null) {
            CLib.free(ptr);
            ptr = null;
        }
        super.finalize(); 
    }

    public VoidPtr getAddress() { return ptr; }
    
}
