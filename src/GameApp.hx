import src.HScene;
import scenes.TestScene;
import hxd.App;

class GameApp extends App {
    public var hScene: HScene;

    override function init() {
        setHScene(new TestScene(this));
    }

    function setHScene(scene: HScene, disposePrevious: Bool = true) {
        super.setScene(scene, disposePrevious);

        hScene = scene;
    }

    override function update(dt: Float) {
        hScene.update(dt); //runs any update functions in the current scene
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
