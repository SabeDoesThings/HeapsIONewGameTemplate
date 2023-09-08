import hxd.Res;
import hxd.App;

class Game extends App {
    override function init() {
        var tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        tf.text = "Hello Heaps.io";
    }

    override function update(dt: Float) {
        
    }

    static function main() {
        new Game();
	Res.initLocal();
    }
}
