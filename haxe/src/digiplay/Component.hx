package digiplay;

@:allow(digiplay)
class Component {

    private var _parent:Node;
    public var parent(get, set):Node;
    function get_parent() return _parent;
    function set_parent(value:Node):Node {
        if(_parent != value) {
            if(value != null) value.addComponent(this); else _parent = null;
        }
        return value;
    }

    var next:Component;

    public function new() {
        
    }
}