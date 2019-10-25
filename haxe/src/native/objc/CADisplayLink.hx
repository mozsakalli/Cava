package native.objc;

@:objc
@:native("CADisplayLink")
extern class CADisplayLink {

    public function setFrameInterval(value:Int):Void;
    
}