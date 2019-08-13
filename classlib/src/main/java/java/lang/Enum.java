package java.lang;

/**
 * Implementation class required to compile enums
 *
 * @author Shai Almog
 */
public class Enum<E extends Enum<E>> implements Comparable<E> {

    private final String name;

    private final int ordinal;

    protected Enum(final String name, final int ordinal) {
        this.name = name;
        this.ordinal = ordinal;
    }

    protected Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    /*
    protected static final void setEnumValues(final Object[] values, final Class c) {
    }

    protected static final <T> T[] getEnumValues(final Class<T> class_) {
        return null;
    }
    */
    
    public native static <T extends Enum<T>> T valueOf(final Class<T> enumType, final String name);
    
    public final boolean equals(final Object other) {
        return other == this;
    }

    public final int hashCode() {
        return ordinal;
    }

    public String toString() {
        return name;
    }

    public final int compareTo(final E e) {
        return ordinal - ((Enum)e).ordinal;
    }

    public final String name() {
        return name;
    }

    public final int ordinal() {
        return ordinal;
    }

    /*
    public final Class<E> getDeclaringClass() {
        return null;
    }
    */
}
