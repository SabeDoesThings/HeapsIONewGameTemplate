package scenes;

import src.HScene;
import hxd.App;

class TestScene extends HScene {
    public function new(app: App) {
        super(app);

        var tf = new h2d.Text(hxd.res.DefaultFont.get(), this);
        tf.text = "Hello Hashlink !";
    }
}