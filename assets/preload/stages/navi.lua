function onCreate()

	makeLuaSprite('danvaniel', 'navida/danvaniel', 250, 300);
	setScrollFactor('danvaniel', 0.9, 0.9);
	scaleObject('danvaniel', 2, 2);

	makeLuaSprite('arbo', 'navida/arbo', 450, 500);
	setScrollFactor('arbo', 0.9, 0.9);
	scaleObject('arbo', 1.5, 1.5);

	makeLuaSprite('bg', 'navida/bg', 250, 300);
	setScrollFactor('bg', 0.9, 0.9);
	scaleObject('bg', 2, 2);

	makeAnimatedLuaSprite('nieve', 'misingbus/nieve',250, 250)
	addAnimationByPrefix('nieve', 'nieve', 'nieve', 24, true)
	setScrollFactor('nieve', 0.9, 0.9);
	scaleObject('nieve', 12, 12);

	addLuaSprite('bg', false);
	addLuaSprite('arbo', false);
	addLuaSprite('danvaniel', false);
	addLuaSprite('nieve', true);
	setProperty('nieve.antialiasing' ,false);
	setProperty('danvaniel.antialiasing' ,true);
	setProperty('arbo.antialiasing' ,false);
	setProperty('bg.antialiasing' ,false);

end