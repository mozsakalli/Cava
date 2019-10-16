package digiplay;

class Game {

	static var singleton:Game;

	static var _lastTime:Float = 0;
	static var _currentTime:Float;
	static var _deltaTime:Float;

	public static var time(get,never):Float;
	@:noCompletion private static function get_time():Float return _currentTime; 
	public static var deltaTime(get, never):Float;
	@:noCompletion private static function get_deltaTime():Float return _deltaTime;
	
	public function new() {
		singleton = this;
		_lastTime = Sys.time();
	}

	public function didFinishLaunchingWithOptions():Void {}

	private function step():Void {
		_currentTime = Sys.time();
		_deltaTime = _currentTime - _lastTime;
		_lastTime = _currentTime;

		update();
		render();
	}

	public function initialize():Void {
	}

	public function update():Void {
	}

	public function render():Void {
	}
}
