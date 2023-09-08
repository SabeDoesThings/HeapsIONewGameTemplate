import h2d.Object;
import h2d.Scene;
import Game;

class Entity {
    public var scene: Scene;
    public var sprite: Object;
    public var x: Float = 0;
    public var y: Float = 0;

    public function new(scene: Scene) {
        this.scene = scene;
    }

    public function update() {
        sprite.setPosition(this.x, this.y);
    }
}