package states.stages;
// x - +        y arriba abajo + -
import states.stages.objects.*;
import objects.Character;

class BrokenSchool extends BaseStage
{
  var cielo:BGSprite;
  var edificio:BGSprite;
  var table:BGSprite;
  var exitdoor:BGSprite;
  var gcloud:BGSprite;
  var gcloudb:BGSprite;
  var platform:BGSprite;

	override function create()
	{
        /*
        cielo = new BGSprite('fl_trouble/cielo', -1100, -1100, 0.9, 0.9);
        cielo.scrollFactor.set( 0.5, 0.5);
        add(cielo);

        nubes= new BGSprite('fl_trouble/nubes', -1100, -1100, 0.9, 0.9);
        nubes.scrollFactor.set(0.5, 0.5);
        add(nubes);
        
        atras= new BGSprite('fl_trouble/atras', -1100, -1100, 0.9, 0.9);
        atras.scrollFactor.set(1, 1);
        add(atras);

        fogata= new BGSprite('fl_trouble/fogata', -1100, -1100, 0.9, 0.9);
        fogata.scrollFactor.set(1, 1);
        add(fogata);
        
        */

        if(!ClientPrefs.data.lowQuality)
          {
            gcloud = new BGSprite('fl_trouble/glitch_cloud', -500, -600, 0.9, 0.9, ['nubes y shit instancia 1']);
            gcloud.scrollFactor.set(1, 1);
            add(gcloud);

            gcloudb = new BGSprite('fl_trouble/glitch_coud2', 1500, -700, 0.9, 0.9, ['Symbol 1 instancia 1']);
            gcloudb.scrollFactor.set(1, 1);
            add(gcloudb);

            edificio = new BGSprite('fl_trouble/corrupted_school', 0, -650, 0.9, 0.9, ['escuela instancia 1']);
            edificio.scrollFactor.set(1, 1);
            add(edificio);

            exitdoor = new BGSprite('fl_trouble/exit', 700, -200, 0.9, 0.9, ['exit instancia 1']);
            exitdoor.scrollFactor.set(1, 1);
            add(exitdoor);

            table = new BGSprite('fl_trouble/table', 1500, 550, 0.9, 0.9, ['mesa instancia 1']);
            table.scrollFactor.set(1, 1);
            add(table);

            platform = new BGSprite('fl_trouble/flplat', -600, 400, 0.9, 0.9, ['nul p instancia 1']);
            platform.scrollFactor.set(1, 1);
            add(platform);

          }
	}
/*
	override function createPost()
	{

      layer = new BGSprite('fl_trouble/layer', -1000, -1100, 0.9, 0.9);
      //bus.scrollFactor.set(1, 1);
      add(layer);

      bus = new BGSprite('fl_trouble/bus', -1100, -1100, 0.9, 0.9);
      //bus.scrollFactor.set(1, 1);
      add(bus);

      //baldi = new BGSprite('fl_trouble/baldi', -800, -400, 0, 0 );
      //baldi.alpha = 0;
		  //baldi.blend = ADD;
      //add(baldi);
  }
  */
  override function countdownTick(count:Countdown, num:Int) if(num % 2 == 0) everyoneDance();
	override function beatHit() everyoneDance();
	function everyoneDance()
	{
		if(!ClientPrefs.data.lowQuality) 
            edificio.dance();
            table.dance();
            exitdoor.dance();
            gcloud.dance();
            gcloudb.dance();
            platform.dance();
		/*foregroundSprites.forEach(function(spr:BGSprite)
		{
			spr.dance();
		});*/
	}
}