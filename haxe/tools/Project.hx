package tools;

import haxe.ds.StringMap;
import haxe.xml.Fast;
import sys.io.File;
import sys.FileSystem;
import haxe.xml.Access;

class Project {

    public var path:String;
    public var main:String;
    public var name:String;
    public var packageName:String;
    public var platform:Platform;
    public var isSimulator:Bool;
    public var isDebug:Bool;

    public var buildPath:String;
    public var haxeDefs:Array<String> = [];

    public function new(path:String, platform:String) {
        if(!FileSystem.exists(path)) throw 'Project file not found: $path';
        
        switch (platform) {
            case "iphone": this.platform = Platform.IPhone;
            case "iphonesim": this.platform = Platform.IPhone; isSimulator = true;
            case "android": this.platform = Platform.Android; 
            case "androidsim": this.platform = Platform.Android; isSimulator = true;
            case "html5": this.platform = Platform.Html5;
            default: throw 'Unknown platform: $platform';
        }

        var root = new Access(Xml.parse(File.getContent(path)).firstElement());
        main = root.att.Main;
        name = root.att.Name;
        packageName = root.att.Package;

        haxeDefs.push('-cp src');
        haxeDefs.push('-main $main');

        switch (this.platform) {
            case IPhone:
                haxeDefs.push('-D iphone');
                haxeDefs.push('-D ios');
            default:
        }

        buildPath = FileSystem.absolutePath('bin/${this.platform}');
        if(isSimulator) buildPath += 'Sim';
        buildPath += isDebug ? '-Debug' : '-Release';
        Sys.println(buildPath);
    }

    public function getBuilder():Builder {
        switch (platform) {
            case IPhone: return new IPhoneBuilder(this);
            default: return null;
        }
    }
}