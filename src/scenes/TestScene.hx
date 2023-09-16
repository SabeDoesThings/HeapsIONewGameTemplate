package scenes;

import hxd.App;
import core.Level;

class TestScene extends Level {
    public function new(app: App) {
        super();

        var tf = new h2d.Text(hxd.res.DefaultFont.get(), this);
        tf.text = "Hello Heaps.io";
    }

    public function init() {
        
    }

    public function update() {
        
    }
}