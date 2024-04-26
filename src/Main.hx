class Main extends hxd.App {
    override function init() {
        var tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        tf.text = "Hello Heaps.io!";
        tf.scale(4);
    }

    public static var inst(get, null): Main;
    static function get_inst(): Main {
        if (inst == null)
            inst = new Main();

        return inst;
    }
    static function main() {
        #if sys
        hxd.Res.initLocal(); // important! allows the app access to our game's resource files: images (sprites), audio, etc.
        #else
        hxd.Res.initEmbed(); // use hxd.Res.initEmbed(); for html5/js
        #end

        inst = new Main();
    }
}
