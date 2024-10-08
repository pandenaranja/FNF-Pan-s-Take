--By BloonyFox

function onCreatePost()
	--BF
	makeLuaSprite('winningIconP', 'icons/win/win-'..getProperty('boyfriend.healthIcon'), getProperty('iconP1.x'), getProperty('iconP1.y'))
	setObjectCamera('winningIconP', 'hud')
	addLuaSprite('winningIconP', true)
	setProperty('winningIconP.flipX', true)
	setProperty('winningIconP.visible', false)

	--Opponent
	makeLuaSprite('winningIconB', 'icons/win/win-'..getProperty('dad.healthIcon'), getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('winningIconB', 'hud')
	addLuaSprite('winningIconB', true)
	setProperty('winningIconB.flipX', false)
	setProperty('winningIconB.visible', false)
end

function onUpdatePost(elapsed)
	--BF
	setObjectOrder('winningIconP', getObjectOrder('iconP1') - 1)
	removeLuaSprite(winningIconP)
	makeLuaSprite('winningIconP', 'icons/win/win-'..getProperty('boyfriend.healthIcon'), getProperty('iconP1.x'), getProperty('iconP1.y'))
	setObjectCamera('winningIconP', 'hud')
	addLuaSprite('winningIconP', true)
	setProperty('winningIconP.flipX', true)
	setProperty('winningIconP.visible', false)

			setProperty('winningIconP.x', getProperty('iconP1.x'))
			setProperty('winningIconP.angle', getProperty('iconP1.angle'))
			setProperty('winningIconP.alpha', getProperty('iconP1.alpha'))
			setProperty('winningIconP.y', getProperty('iconP1.y'))
			setProperty('winningIconP.scale.x', getProperty('iconP1.scale.x'))
			setProperty('winningIconP.scale.y', getProperty('iconP1.scale.y'))
			
			if getProperty('health') >= 1.62 then
				setProperty('iconP1.visible', false)
				setProperty('winningIconP.visible', true)
			else
				setProperty('iconP1.visible', true)
				setProperty('winningIconP.visible', false)
			end

	--Opponent
	setObjectOrder('winningIconB', getObjectOrder('iconP2') - 1)
	removeLuaSprite(winningIconB)
	makeLuaSprite('winningIconB', 'icons/win/win-'..getProperty('dad.healthIcon'), getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('winningIconB', 'hud')
	addLuaSprite('winningIconB', true)
	setProperty('winningIconB.flipX', false)
	setProperty('winningIconB.visible', false)

			setProperty('winningIconB.x', getProperty('iconP2.x'))
			setProperty('winningIconB.angle', getProperty('iconP2.angle'))
			setProperty('winningIconB.alpha', getProperty('iconP2.alpha'))
			setProperty('winningIconB.y', getProperty('iconP2.y'))
			setProperty('winningIconB.scale.x', getProperty('iconP2.scale.x'))
			setProperty('winningIconB.scale.y', getProperty('iconP2.scale.y'))
			
			if getProperty('health') <= 0.4 then
				setProperty('iconP2.visible', false)
				setProperty('winningIconB.visible', true)
			else
				setProperty('iconP2.visible', true)
				setProperty('winningIconB.visible', false)
			end
end