package digiplay;

class Node {

    var position:Vec3 = new Vec3();
    var rotation:Vec3 = new Vec3();
    var scale:Vec3 = new Vec3();
    var components:Component;

    public function new() {
        
    }

    public function removeComponent(c:Component):Bool {
        var ptr = components;
        var pre:Component = null;
        while(ptr != null) {
            if(ptr == c) {
                if(pre != null) pre.next = ptr.next; else components = components.next;
                return true;
            }
            pre = ptr;
            ptr = ptr.next;
        }
        return false;
    }

    public function addComponent(c:Component) {
        if(c.parent != this) {
            if(c.parent != null) {
                c.parent.removeComponent(c);
            }
            c.next = components;
            components = c;
            c.parent = this;
        }
    }
}