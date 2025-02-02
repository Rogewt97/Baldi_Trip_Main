package states.stages;

import states.stages.objects.*;
import objects.Character;

class Boilin extends BaseStage
{
  //var floor:BGSprite;
  var pcielo:BGSprite;
  var piso:BGSprite;
  var pnieve:BGSprite; //animado
  var ptorres:BGSprite; //animado
  //var pufff:BGSprite;
  var sky:BGSprite;

	override function create()
	{
        pcielo = new BGSprite('polus/pcielo', -1100, -700, 0.9, 0.9);
        //pcielo.scrollFactor.set( 0, 0);
        add(pcielo);

        piso= new BGSprite('polus/piso', -1100, 200, 0.9, 0.9);
        //piso.scrollFactor.set(0, 0);
        add(piso);

        if(!ClientPrefs.data.lowQuality)
          {
            ptorres = new BGSprite('polus/ptorres', -1100, -250, 0.9, 0.9, ['torres instancia 1']);
            //ptorres.scrollFactor.set(0, 0);
            add(ptorres);
          }
	}

	override function createPost()
	{
    if(!ClientPrefs.data.lowQuality)
      {
        pnieve = new BGSprite('polus/pnieve', -500, -300, 0.9, 0.9, ['aguacero instancia 1']);
        pnieve.scrollFactor.set(1, 1);
        add(pnieve);
      }

  }
  override function countdownTick(count:Countdown, num:Int) if(num % 2 == 0) everyoneDance();
	override function beatHit() everyoneDance();
	function everyoneDance()
	{
		if(!ClientPrefs.data.lowQuality)
      pnieve.dance();
      ptorres.dance();
		/*foregroundSprites.forEach(function(spr:BGSprite)
		{
			spr.dance();
		});*/
	}
}