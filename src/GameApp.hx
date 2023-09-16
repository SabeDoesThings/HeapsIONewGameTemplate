import scenes.TestScene;
import hxd.App;

class GameApp extends App {
    public var testScene: TestScene;

    override function init() {
        testScene = new TestScene(this);

        setScene(testScene); //sets scene
    }

    override function update(dt: Float) {
        testScene.update(); //runs any update functions in the current scene
    }

    static function main() {
        #if sys
        hxd.Res.initLocal(); // important! allows the app access to our game's resource files: images (sprites), audio, etc.
        #else
        hxd.Res.initEmbed(); // use hxd.Res.initEmbed(); for html5/js
        #end
        new GameApp();
    }
}
