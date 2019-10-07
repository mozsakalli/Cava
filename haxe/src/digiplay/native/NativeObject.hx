package digiplay.native;

import cpp.Stdlib;
import cpp.Function;
import cpp.vm.Gc;
import cpp.Pointer;

class NativeObject {

	var nativePeer:Pointer<cpp.Void>;

	public function new() {
		Gc.setFinalizer(this, Function.fromStaticFunction(finalizer));
	}

	public function dispose():Void {
		#if android
		#else
		#end
	}

	static function finalizer(obj:NativeObject):Void {
		if(obj != null && obj.nativePeer != null) { 
			obj.dispose();
			obj.nativePeer = null;
		}
	}
}