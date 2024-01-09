package src;

import core.GameObject;
import hxd.App;
import h2d.Scene;

abstract class HScene extends Scene {
    //add entities here

    var entities: Array<GameObject> = [];

    public function new(app: App) {
        super();
    }

    public function addEntity(ent: GameObject) {
        entities.push(ent);
    }

    public function removeEntity(ent: GameObject) {
        entities.remove(ent);
        ent.dispose();
    }

    public function update(dt: Float) {
        for (ent in entities) {
            ent.update(dt);
        }
    }
}
