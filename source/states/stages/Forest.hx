package states.stages;

import states.stages.objects.*;
import objects.Character;

class Forest extends BaseStage
{
  var cielo:BGSprite;
  var nubes:BGSprite;
  var atras:BGSprite;
  var fogata:BGSprite;
  var fogataf:BGSprite;
  var layer:BGSprite;
  var bus:BGSprite;
  var baldi:BGSprite;

	override function create()
	{
        cielo = new BGSprite('forest/cielo', -1100, -1100, 0.9, 0.9);
        cielo.scrollFactor.set( 0.5, 0.5);
        add(cielo);

        nubes= new BGSprite('forest/nubes', -1100, -1100, 0.9, 0.9);
        nubes.scrollFactor.set(0.5, 0.5);
        add(nubes);
        
        atras= new BGSprite('forest/atras', -1100, -1100, 0.9, 0.9);
        atras.scrollFactor.set(1, 1);
        add(atras);

        fogata= new BGSprite('forest/fogata', -1100, -1100, 0.9, 0.9);
        fogata.scrollFactor.set(1, 1);
        add(fogata);

        if(!ClientPrefs.data.lowQuality)
          {
            fogataf = new BGSprite('forest/fogataf', 500, 300, 0.9, 0.9, ['fuego_fogata']);
            fogataf.scrollFactor.set(1, 1);
            add(fogataf);
          }
	}

	override function createPost()
	{
      layer = new BGSprite('forest/layer', -1000, -1100, 0.9, 0.9);
      //bus.scrollFactor.set(1, 1);
      add(layer);

      bus = new BGSprite('forest/bus', -1100, -1100, 0.9, 0.9);
      //bus.scrollFactor.set(1, 1);
      add(bus);

      //baldi = new BGSprite('forest/baldi', -800, -400, 0, 0 );
      //baldi.alpha = 0;
		  //baldi.blend = ADD;
      //add(baldi);
  }
  override function countdownTick(count:Countdown, num:Int) if(num % 2 == 0) everyoneDance();
	override function beatHit() everyoneDance();
	function everyoneDance()
	{
		if(!ClientPrefs.data.lowQuality) fogataf.dance();
		/*foregroundSprites.forEach(function(spr:BGSprite)
		{
			spr.dance();
		});*/
	}
}