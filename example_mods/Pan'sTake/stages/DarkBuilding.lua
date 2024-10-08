function onCreate()
	
    makeAnimatedLuaSprite('DarkBuilding', 'DarkBuilding', -600, -300)
    addAnimationByPrefix('DarkBuilding', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('DarkBuilding', 1, 1)
    addLuaSprite('DarkBuilding', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end