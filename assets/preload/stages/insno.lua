function onCreate()

	makeLuaSprite('sus', 'insano/insno', 100, 100);
	setScrollFactor('sus', 0.9, 0.9);
	scaleObject('sus', 10, 10);

	makeLuaSprite('fondo', 'insano/insnon', 100, 100);
	setScrollFactor('fondo', 0.9, 0.9);
	scaleObject('fondo', 10, 10);

	addLuaSprite('true', false);
	addLuaSprite('fondo', false);
	setProperty('sus.antialiasing' ,false);
	setProperty('fondo.antialiasing' ,false);

end