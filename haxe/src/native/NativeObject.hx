package native;

import haxe.Template;
import cpp.Pointer;

class NativeObject {

    public var nativePeer:cpp.RawPointer<cpp.Void>;
    var nativeClass:cpp.RawPointer<cpp.Void>;
    var nativePeerOwner:Bool;

    public function new() {
        cpp.vm.Gc.setFinalizer(this, cpp.Function.fromStaticFunction(_finalizer));
    }

    private static function _finalizer(instance:NativeObject):Void {
        if(instance != null && instance.nativePeer != null && instance.nativePeerOwner)
            instance.finalize();
    }

    public function finalize() {
        
    }

    public static function alloc<T>(t:Class<T>):T {
        return Type.createEmptyInstance(t);
    }
}