function onCreate()

	makeLuaSprite('snowguys', 'misingbus/snowguys', 100, 100);
	setScrollFactor('snowguys', 0.9, 0.9);
	scaleObject('snowguys', 8, 8);

	makeLuaSprite('fondo', 'misingbus/fondo', 100, 100);
	setScrollFactor('fondo', 0.9, 0.9);
	scaleObject('fondo', 8, 8);

	makeLuaSprite('floor', 'misingbus/floor', 100, 100);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 8, 8);

	makeLuaSprite('luna', 'misingbus/luna', 100, 100);
	setScrollFactor('luna', 0.9, 0.9);
	scaleObject('luna', 8, 8);

	makeLuaSprite('tubo', 'misingbus/tubo', 100, 100);
	setScrollFactor('tubo', 0.9, 0.9);
	scaleObject('tubo', 8, 8);

	makeAnimatedLuaSprite('nieve', 'misingbus/nieve',100, 100)
	addAnimationByPrefix('nieve', 'nieve', 'nieve', 24, true)
	setScrollFactor('nieve', 0.9, 0.9);
	scaleObject('nieve', 8, 8);

	addLuaSprite('luna', false);
	addLuaSprite('fondo', false);
	addLuaSprite('floor', false);
	addLuaSprite('snowguys', true);
	addLuaSprite('tubo', false);
	addLuaSprite('nieve', true);
	setProperty('snowguys.antialiasing' ,false);
	setProperty('fondo.antialiasing' ,false);
	setProperty('floor.antialiasing' ,false);
	setProperty('luna.antialiasing' ,false);
	setProperty('tubo.antialiasing' ,false);
	setProperty('nieve.antialiasing' ,false);

end