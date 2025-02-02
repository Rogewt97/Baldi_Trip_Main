function onCreate()

	makeLuaSprite('floor', 'navida/piso', 250, 870);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 1, 1);

	makeLuaSprite('sky', 'navida/pcielo', 310, 50);
	setScrollFactor('sky', 0.9, 0.9);
	scaleObject('sky', 1, 1);

	makeAnimatedLuaSprite('pnieve', 'navida/pnieve',650, 250)
	addAnimationByPrefix('pnieve', 'dance', 'aguacero instancia 100', 24, true)
	setScrollFactor('pnieve', 0.9, 0.9);
	scaleObject('nieve', 2.5, 2.5);

	makeAnimatedLuaSprite('pnieve2', 'navida/pnieve',450, 1000)
	addAnimationByPrefix('pnieve2', 'dance', 'aguacero instancia 100', 24, true)
	setScrollFactor('pnieve2', 0.9, 0.9);
	scaleObject('nieve2', 2.5, 2.5);

	makeAnimatedLuaSprite('ptorres', 'navida/ptorres',250, 450)
	addAnimationByPrefix('ptorres', 'dance', 'torres instancia 100', 24, true)
	setScrollFactor('ptorres', 0.9, 0.9);
	scaleObject('ptorres', 1, 1);

	makeAnimatedLuaSprite('pufff', 'navida/pufff',500, 250)
	addAnimationByPrefix('pufff', 'dance', 'uff instancia 100', 24, true)
	setScrollFactor('pufff', 1.5, 1.5);
	scaleObject('pufff', 2, 2);

	addLuaSprite('sky', false);
	addLuaSprite('floor', false);
	addLuaSprite('pnieve', true);
	addLuaSprite('pnieve2', true);
	addLuaSprite('ptorres', false);
	addLuaSprite('pufff', true);
	setProperty('nieve.antialiasing' ,false);
	setProperty('floor.antialiasing' ,false);
	setProperty('sky.antialiasing' ,false);

end