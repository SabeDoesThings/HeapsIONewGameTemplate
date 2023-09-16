package core;

class Sprites {
    
    // - be aware to chose chosenFrames *inside* of what exists!
    public static function createAnimFromStrip(parent, image_resource:hxd.res.Image, speed, chosenFrames:Array<Int>, centered:Bool=true): h2d.Anim {
        var height = image_resource.getSize().height;
        var autoCount = Math.floor( image_resource.getSize().width / height );
        var allFrames  = image_resource.toTile().split( autoCount );
        for( f in allFrames ){
            if( centered )
                f.setCenterRatio();
        }
        var frames = [ for( i in chosenFrames ) allFrames[i] ];
        return new h2d.Anim( frames, speed, parent );
    }
}