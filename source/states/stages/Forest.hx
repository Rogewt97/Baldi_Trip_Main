package states.stages;

import states.stages.objects.*;
import objects.Character;

class Forest extends BaseStage
{
	// If you're moving your stage from PlayState to a stage file,
	// you might have to rename some variables if they're missing, for example: camZooming -> game.camZooming

	override function create()
	{
        //var fogata:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('shared/images/trip/fogata'));
        //fogata.setGraphicSize(Std.int(fogata.width * 1.1));
        //fogata.updateHitbox();
        //fogata.antialiasing = true;
        //fogata.scrollFactor.set(0.9, 0.9);
        //fogata.visible = true;

        var cielo:BGSprite = new BGSprite('forest/cielo', -1100, -1100, 0.9, 0.9);
        cielo.scrollFactor.set(0.9, 0.9);
        add(cielo);
        var nubes:BGSprite = new BGSprite('forest/nubes', -1100, -1100, 0.9, 0.9);
        nubes.scrollFactor.set(0.9, 0.9);
        add(nubes);
        var atras:BGSprite = new BGSprite('forest/atras', -1100, -1100, 0.9, 0.9);
        atras.scrollFactor.set(0.0, 0.0);
        add(atras);
        var fogata:BGSprite = new BGSprite('forest/fogata', -1100, -1100, 0.9, 0.9);
        fogata.scrollFactor.set(0.0, 0.0);
        add(fogata);

	}
	
	override function createPost()
	{
         var bus:BGSprite = new BGSprite('forest/bus', -1100, -1100, 0.9, 0.9);
         bus.scrollFactor.set(0.0, 0.0);
         add(bus);
      /*  var bus:FlxSprite = new FlxSprite(0, -200).loadGraphic(Paths.image('forest/bus'));
        bus.setGraphicSize(Std.int(bus.width * 1.1));
        bus.updateHitbox();
        bus.antialiasing = true;
        bus.scrollFactor.set(0.9, 0.9);
        bus.visible = true;
        add(bus);*/

    }

}