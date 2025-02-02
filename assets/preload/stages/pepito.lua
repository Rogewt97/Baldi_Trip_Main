function onCreate()
	-- background shit
	makeLuaSprite('', 'f', -750, -200);
	setScrollFactor('', 0.9, 0.9);
	scaleObject('', 0.7, 0.7);
	
	makeLuaSprite('', 'm', -720, -400);
	setScrollFactor('', 0.9, 0.9);
	scaleObject('', 0.7, 0.7);

	makeLuaSprite('', 'p', -720, -800);
	setScrollFactor('', 0.9, 0.9);
	scaleObject('', 0.9, 0.9);

	addLuaSprite('', false);
	addLuaSprite('', false);
	addLuaSprite('', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end