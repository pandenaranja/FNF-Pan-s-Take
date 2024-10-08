function onCreate()
	
    makeAnimatedLuaSprite('OGLands', 'OGLands', -600, -300)
    addAnimationByPrefix('OGLands', 'Idle', 'Idle', 24, true)
    setLuaSpriteScrollFactor('OGLands', 1, 1)
    addLuaSprite('OGLands', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end