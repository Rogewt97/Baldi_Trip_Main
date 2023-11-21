package states.stages;

import states.stages.objects.*;
import objects.Character;

class Forest extends BaseStage
{
  var schoolhouse:BgSprite;
  var bus:BgSprite;
  var table:BgSprite;
  var platform:BgSprite;
  var cloud:BgSprite;
  var cloudy:BgSprite;

	override function create()
	{
    schoolhouse = new BGSprite('fl_trouble/corrupted_school', 500, 300, 0.9, 0.9, ['escuela instancia 1']);
    fogataf.scrollFactor.set(1, 1);
    add(schoolhouse);

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
		if(!ClientPrefs.data.lowQuality)
			upperBoppers.dance(true);

		schoolhouse.dance(true);
		santa.dance(true);
	}
}