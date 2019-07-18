package compiler.util;

/**
 *
 * @author mustafa
 */
public class IosDevice {
    
    private final String id;
    private final String name;
    private final String sdk;
    private final Status status;
    
    public enum Status {
        Shutdown, Booted
    }
    
    public IosDevice(String id, String name, String sdk, Status status) {
        this.id = id;
        this.name = name;
        this.sdk = sdk;
        this.status = status;
    }

    public String name() {
        return name;
    }
    
    public String id() {
        return id;
    }
    
    public String sdk() {
        return sdk;
    }
    
    public Status status() {
        return status;
    }
    
    @Override
    public String toString() {
        return name+" ("+sdk+")";
    }
    
    
}
