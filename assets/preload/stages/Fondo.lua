function onCreate()
	
	makeLuaSprite('Fondo', 'stagecurtains', -500, -200) --esto los -500 y - 200 son cordenadas,  -- el que dice *stagecurtains* es el nombre de la iamgen   
	setLuaSpriteScrollFactor('Fondo', 0.9, 0.9) -- el que dice fondo es el nombre del codigo de la parte
	addLuaSprite('Fondo', false) -- false aparece normal y true hasta el frente

	makeLuaSprite( 'Fondo2', 'stagefront', -500, -200)
	setLuaSpriteScrollFactor('Fondo2', 0.9, 0.9) -- el scroll factor no lo muevas
	addLuaSprite('Fondo2', false)

	setProperty('Fondo2.visible', false) -- false invisible y true visible
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'fondo1' then --fondo1 es el normal
			setProperty('Fondo2.visible', false);
			setProperty('Fondo.visible', true);
		end
		if value1 == 'fondo2' then
			setProperty('Fondo2.visible', true); -- fondo2 es el otro
			setProperty('Fondo.visible', false);
		end
	end
end