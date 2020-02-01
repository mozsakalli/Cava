package tools;

import sys.io.Process;

class Cmd {

	public static function runCommand(path:String, command:String, args:Array<String>):String {
		var oldPath:String = "";

		if (path != "") {
			oldPath = Sys.getCwd();
			Sys.setCwd(path);
		}

		var argString = "";

		for (arg in args) {
			if (arg.indexOf(" ") > -1) {
				argString += " \"" + arg + "\"";
			} else {
				argString += " " + arg;
			}
		}
		Sys.println("Executing: "+command + argString);
		var proc = new Process(command, args);
		var exitCode = proc.exitCode(true);
		if(exitCode != 0) {
			var bytes = proc.stderr.readAll();
			var str = bytes.getString(0, bytes.length);

			bytes = proc.stdout.readAll();
			str += "\n" + bytes.getString(0, bytes.length);
			if (oldPath != "") {
				Sys.setCwd(oldPath);
			}
			throw str;
		}
		var bytes = proc.stdout.readAll();
		var str = bytes.getString(0,bytes.length);

		if (oldPath != "") {
			Sys.setCwd(oldPath);
		}

		return StringTools.trim(str);
	}
}
