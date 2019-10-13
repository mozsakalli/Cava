package java.io;

/**
 * <p>
 * Indicates that an output object can be flushed.
 * </p>
 * 
 * @since 1.5
 */
public interface Flushable {
    /**
     * <p>
     * Flushes the object by writing out any buffered data to the underlying
     * output.
     * </p>
     * 
     * @throws IOException
     *             if there are any issues writing the data.
     */
    void flush() throws IOException;
}
