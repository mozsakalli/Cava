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

/**
 *
 * @author mustafa
 */

public abstract class Buffer {

    protected int capacity;
    protected int position;
    protected int limit;
    protected boolean readonly;

    public final int limit() {
        return limit;
    }

    public final int remaining() {
        return limit - position;
    }

    public final int position() {
        return position;
    }

    public final int capacity() {
        return capacity;
    }

    public final Buffer limit(int newLimit) {
        limit = newLimit;
        return this;
    }

    public final Buffer position(int newPosition) {
        position = newPosition;
        return this;
    }

    public final boolean hasRemaining() {
        return remaining() > 0;
    }

    public final Buffer clear() {
        position = 0;
        limit = capacity;
        return this;
    }

    public final Buffer flip() {
        limit = position;
        position = 0;
        return this;
    }

    public final Buffer rewind() {
        position = 0;
        return this;
    }

    public boolean isReadOnly() {
        return readonly;
    }
}
