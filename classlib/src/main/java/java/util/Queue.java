package java.util;

public interface Queue<E> extends Collection<E> {

    public boolean offer(E o);

    public E poll();

    public E remove();

    public E peek();

    public E element();

}
