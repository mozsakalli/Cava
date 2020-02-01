package tools.xcode;

class PBXNode {
	private static var uuidCounter:Int = 0x10000;

	var uuid:String;
	var project:PBXProject;
	var name:String;

	public function new(project:PBXProject, name:String) {
		this.project = project;
		this.name = name;
		this.uuid = StringTools.hex(uuidCounter, 20); 
		uuidCounter += 1;
	}

	public function getProject():PBXProject {
		return project;
	}

	public function getUuid():String {
		return uuid;
	}

	public function getName():String {
		return name;
	}

	public function uuidWithComment():String {
		return this.uuid + " /* " + this.name + " */";
	}

	public function dump(out:SourceWriter) {}
}
