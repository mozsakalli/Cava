package java.util;

public class Random{
    private static final long multiplier = 0x5deece66dL;

    private long seed;

    public Random() {
        this(System.currentTimeMillis());
    }

    public Random(long seed){
         setSeed(seed);
    }
    
    protected int next(int bits){
        seed = (seed * multiplier + 0xbL) & ((1L << 48) - 1);
        return (int) (seed >>> (48 - bits));
    }

    public double nextDouble(){
        return ((((long) next(26) << 27) + next(27)) / (double) (1L << 53));
    }

    public float nextFloat(){
        return (next(24) / 16777216f);
    }

    public int nextInt(){
        return next(32);
    }

    public int nextInt(int n){
        if (n > 0) {
            if ((n & -n) == n) {
                return (int) ((n * (long) next(31)) >> 31);
            }
            int bits, val;
            do {
                bits = next(31);
                val = bits % n;
            } while (bits - val + (n - 1) < 0);
            return val;
        }
        throw new IllegalArgumentException();
    }

    public long nextLong(){
        return ((long) next(32) << 32) + next(32);
    }

    public void setSeed(long seed){
        this.seed = (seed ^ multiplier) & ((1L << 48) - 1);
    }

}
