function onCreate()
	
    makeAnimatedLuaSprite('ReddishBuilding', 'ReddishBuilding', -600, -300)
    addAnimationByPrefix('ReddishBuilding', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('ReddishBuilding', 1, 1)
    addLuaSprite('ReddishBuilding', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end