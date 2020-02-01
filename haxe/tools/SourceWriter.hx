package tools;

class SourceWriter {

    var tabs:Int = 0;
    var needsTabs:Bool;
    var buffer:StringBuf = new StringBuf();

    public function new() {
        
    }
    function checkTabs() {
        if(needsTabs) {
            for(i in 0...tabs) {
                buffer.add("\t");
            }
            needsTabs = false;
        }
    }

    public function print(str:Dynamic):SourceWriter {
        checkTabs();
        buffer.add(str);
        return this;
    }

    public function println(str:Dynamic):SourceWriter {
        checkTabs();
        print(str);
        return ln();
    }

    public function indent():SourceWriter {
        tabs++;
        return this;
    }

    public function undent():SourceWriter {
        tabs--;
        if(tabs < 0) tabs = 0;
        return this;
    }

    public function ln():SourceWriter {
        buffer.add("\r\n");
        needsTabs = true;
        return this;
    }

    public function code():String return buffer.toString();
}