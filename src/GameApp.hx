import core.GameScene;
import scenes.TestScene;
import hxd.App;

class GameApp extends App {
    public var gameScene: GameScene;

    override function init() {
        setGameScene(new TestScene(this));
    }

    function setGameScene(scene: GameScene, disposePrevious: Bool = true) {
        super.setScene(scene, disposePrevious);

        gameScene = scene;
    }

    override function update(dt: Float) {
        gameScene.update(dt); //runs any update functions in the current scene
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
