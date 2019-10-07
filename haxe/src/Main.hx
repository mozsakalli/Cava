package;


import digiplay.Game;

class Main extends digiplay.Game {

    override function didFinishLaunchingWithOptions() {
        var node:digiplay.Node = new digiplay.Node();
        trace("Launched!!!!");
    }

    override function update() {
        trace('Update! ${Game.deltaTime} / ${Game.time} / ${Sys.time()}');
    }

    public static function main() {
        new Main();
    }
}