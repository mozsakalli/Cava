package native.objc;

#if macro
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.TypeTools;

using haxe.macro.PositionTools;
using Lambda;
#end

class ObjCBuilder {
#if macro
    public static function build():Array<Field> {
        var fields = haxe.macro.Context.getBuildFields();   
        /*
        var cls = haxe.macro.Context.getLocalClass().get();
        var localPackage = cls.pack.join('.');
        var localClassName:String = Std.string(Context.getLocalClass().get().name);
        Sys.println('building: $localPackage . $localClassName');

        var objcPeer = "_hx_objc_"+localClassName;
        var code = '';
        var headers = getMeta(cls.meta.get(), ":headers");
        if(headers != null) {
            headers.foreach(h -> { code += '#include "$h"\n'; return true; } );
        }
        code += '
        @interface $objcPeer : $localClassName {
            @public ::hx::ObjectPtr<::${localPackage.split(".").join('::')}::${localClassName}_obj> haxePeer;
        } 
        @end';
        setMeta(":headerCode", code);
        
        code = '
        @implementation $objcPeer
        ';

        fields.foreach(field -> {
            var selectorMeta = getMeta(field.meta, ":selector");
            var fun:Function = 
            switch(field.kind) {
                case FFun(fun): fun; 
                default: null;
            }
            if(fun != null) {
                if(selectorMeta != null) {
                    var isStatic = getMeta(field.meta, ":static") != null;
                    if(fun != null) code += buildObjCHeader(fun, field, selectorMeta, isStatic) + "\n";
                }

                if(field.name == "new") {
                    fun.expr = macro {
                        var thiz = this;
                        untyped __cpp__('
                            ${objcPeer}* other = [${objcPeer} alloc];
                            other->haxePeer = thiz;
                            thiz->nativePeer = other;
                        ');
                        
                        nativePeerOwner = false;
                        ${fun.expr}
                    }
                }
            }
            return true;
        });
        code +=
        '
        @end
        ';
        //setMeta(':headerCode', code);
        
        setMeta(':cppFileCode', code);
        */
        return fields;
    }

    /*
    static function buildObjCHeader(fun:Function, f:Field, meta:Array<String>, isStatic:Bool) {
        var ret = fun.ret == null ? "void" : toObjCType(fun.ret);
        var isVoid = ret == "void";
        var str = '-(${ret}) ${f.name} { ';
        if(!isVoid) str += 'return ';
        str += 'haxePeer->${f.name}(); }';

        return str;
    }

    static private function toObjCType(type:ComplexType):String {
        var path:TypePath = null;
        var name:String = null;
        switch(type) {
            case TPath(p):
                path = p;
                name = p.name;

            case TFunction(args,ret):
                return 'void*';

            default:
        }

        return switch(name) {
            case 'Int'      :'int';
            case 'Bool'     :'bool';
            case 'String'   :'const char*';
            case 'Void'     :'void';
            case 'BytesData':'char*';
            case 'Float'    :'float';
            case 'ObjCClass':'Class'; 
            //case 'RawPointer':noRawPointer ? 'I' : 'RawPointer';
            default:
                Context.error("Unknown type ::: "+type , Context.currentPos() );
        }
    }

    static function setMeta(name:String, value:String) {
        var cls = haxe.macro.Context.getLocalClass().get();
        var p = Context.currentPos();
        Context.getLocalClass().get().meta.add(name, [ { expr:EConst( CString( value ) ), pos:p } ], p  );
    }

    static function getMeta(meta:Metadata, name:String) {
        if(meta == null) return null;
        var list = meta.filter(m -> m.name == name);
        if(list.length == 0) return null;
        var result = [];
        list[0].params.foreach(item -> { result.push('${exprToString(item)}'); return true; });
        return result;
    }

	static private function exprToString( e : Expr ) : String {
        var res = switch( e.expr ) {
            case EConst( c ):
                switch( c ){
                    case CString( s ):
                        s;

                    default:
                        null;
                }

            default:
                null;
        }

        return res;
    }    */

#end
}