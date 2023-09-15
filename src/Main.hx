import core.Updatable;

class Main {
    public static var UpdateList = new List<Updatable>();
    public static var fixedDeltaTime : Float = 0.005;

    static function main() {
        #if sys
        hxd.Res.initLocal(); // important! allows the app access to our game's resource files: images (sprites), audio, etc.
        #else
        hxd.Res.initEmbed(); // use hxd.Res.initEmbed(); for html5/js
        #end
        new Game();
    }
}