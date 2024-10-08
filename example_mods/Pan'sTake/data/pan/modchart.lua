function stepHit(step)
end
function beatHit(beat)
end
function removeSprite(tag)
	removeLuaSprite(tag..'BALLS420', true)
end
function rgbToHex(rgb)
	local hexadecimal = ''

	for key, value in pairs(rgb) do
		local hex = ''

		while(value > 0)do
			local index = math.fmod(value, 16) + 1
			value = math.floor(value / 16)
			hex = string.sub('0123456789ABCDEF', index, index) .. hex			
		end

		if(string.len(hex) == 0)then
			hex = '00'

		elseif(string.len(hex) == 1)then
			hex = '0' .. hex
		end

		hexadecimal = hexadecimal .. hex
	end

	return hexadecimal
end
function makeSprite(tag,x,y,width, height, r, g, b)
	if width == nil then width = 100 end
	if height == nil then height = 100 end
	if r == nil then r = 0 end
	if g == nil then g = 0 end
	if b == nil then b = 0 end
	rgb = {r,g,b}
	makeLuaSprite(tag..'BALLS420','',x,y)
	makeGraphic(tag..'BALLS420',width,height,rgbToHex(rgb))
end

function getSpriteValues(tag)
	return {		['x']=getProperty(tag..'BALLS420.x'),
		['y']=getProperty(tag..'BALLS420.y'),
		['angle']=getProperty(tag..'BALLS420.angle'),
		['alpha']=getProperty(tag..'BALLS420.alpha')
	}
end
function addSprite(tag, under)
	addLuaSprite(tag..'BALLS420',under)
	setObjectCamera(tag..'BALLS420','hud')
end
function setSpriteX(tag,value)
	setProperty(tag..'BALLS420.x',value)
end
function setSpriteY(tag,value)
	setProperty(tag..'BALLS420.y',value)
end
function setSpriteAngle(tag,value)
	setProperty(tag..'BALLS420.angle',value)
end
function setSpriteAlpha(tag,value)
	setProperty(tag..'BALLS420.alpha',value)
end
function setSpriteColor(tag,r,g,b)
	setProperty(tag..'BALLS420.color',getColorFromHex(rgbToHex(r,g,b)))
end
lastCurStep = 0
lastCurBeat = 0
function HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSHDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDS()
end
thecool={ [true]=-0.7, [false]=0.7 }
thecool2={ [true]=0, [false]=180 }
function setNoteX(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'x', value)
end
function setNoteY(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'y', value)
end
function setNoteAngle(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'angle', value)
end
function setNoteAlpha(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'alpha', value)
end
function setNoteDirection(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'direction', value)
end
function getNoteValues(note)
    return {['direction']=getPropertyFromGroup('strumLineNotes', note, 'direction'),
    ['x']=getPropertyFromGroup('strumLineNotes', note, 'x'),
    ['y']=getPropertyFromGroup('strumLineNotes', note, 'y'),
    ['angle']=getPropertyFromGroup('strumLineNotes', note, 'angle'),
    ['alpha']=getPropertyFromGroup('strumLineNotes', note, 'alpha')
}
end
lastConductorPos = 0
function onSongStart()
olddotwnx = doTweenX
olddotwny = doTweenY
olddotwna = doTweenAngle
olddotwncol = doTweenColor
olddotwnal = doTweenAlpha
function doTweenX(tag,obj,value,dur,ease)
	olddotwnx(tag,obj..'BALLS420',value,dur,ease)
end
function doTweenY(tag,obj,value,dur,ease)
	olddotwny(tag,obj..'BALLS420',value,dur,ease)
end
function doTweenAngle(tag,obj,value,dur,ease)
	olddotwna(tag,obj..'BALLS420',value,dur,ease)
end
function doTweenColor(tag,obj,r,g,b,dur,ease)
	olddotwncol(tag,obj..'BALLS420',rgbToHex({rgb}),dur,ease)
end
function doTweenAlpha(tag,obj,value,dur,ease)
	olddotwnal(tag,obj..'BALLS420',value,dur,ease)
end
ogposx0 = getPropertyFromGroup('opponentStrums', 0, 'x')
ogposy0 = getPropertyFromGroup('opponentStrums', 0, 'y');
ogposx1 = getPropertyFromGroup('opponentStrums', 1, 'x')
ogposy1 = getPropertyFromGroup('opponentStrums', 1, 'y');
	ogposx2 = getPropertyFromGroup('opponentStrums', 2, 'x');
	ogposy2 = getPropertyFromGroup('opponentStrums', 2, 'y');
	ogposx3 = getPropertyFromGroup('opponentStrums', 3, 'x');
	ogposy3 = getPropertyFromGroup('opponentStrums', 3, 'y');
	ogposx4 = getPropertyFromGroup('playerStrums', 0, 'x');
	ogposy4 = getPropertyFromGroup('playerStrums', 0, 'y');
	ogposx5 = getPropertyFromGroup('playerStrums', 1, 'x');
	ogposy5 = getPropertyFromGroup('playerStrums', 1, 'y');
	ogposx6 = getPropertyFromGroup('playerStrums', 2, 'x');
	ogposy6 = getPropertyFromGroup('playerStrums', 2, 'y');
	ogposx7 = getPropertyFromGroup('playerStrums', 3, 'x');
	ogposy7 = getPropertyFromGroup('playerStrums', 3, 'y');
end
function onUpdate(HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSH)

	ballssimulatorroblox = getSongPosition();
notetime = 211194 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls21', 2, ogposx2 + 0, 0.5, 'sineInOut')
noteTweenY('balls22', 2, ogposy2 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls23', 2, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls24', 2, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls25', 2, 1, 0.5, 'sineInOut')
end
end
notetime = 211194 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls11', 1, ogposx1 + 0, 0.5, 'sineInOut')
noteTweenY('balls12', 1, ogposy1 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls13', 1, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls14', 1, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls15', 1, 1, 0.5, 'sineInOut')
end
end
notetime = 211194 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls01', 0, ogposx0 + 0, 0.5, 'sineInOut')
noteTweenY('balls02', 0, ogposy0 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls03', 0, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls04', 0, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls05', 0, 1, 0.5, 'sineInOut')
end
end
notetime = 211194 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls31', 3, ogposx3 + 0, 0.5, 'sineInOut')
noteTweenY('balls32', 3, ogposy3 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls33', 3, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls34', 3, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls35', 3, 1, 0.5, 'sineInOut')
end
end
notetime = 211194 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls41', 4, ogposx4 + 0, 0.5, 'sineInOut')
noteTweenY('balls42', 4, ogposy4 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls43', 4, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls44', 4, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls45', 4, 1, 0.5, 'sineInOut')
end
end
notetime = 211194 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls51', 5, ogposx5 + 0, 0.5, 'sineInOut')
noteTweenY('balls52', 5, ogposy5 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls53', 5, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls54', 5, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls55', 5, 1, 0.5, 'sineInOut')
end
end
notetime = 211194 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls61', 6, ogposx6 + 0, 0.5, 'sineInOut')
noteTweenY('balls62', 6, ogposy6 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls63', 6, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls64', 6, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls65', 6, 1, 0.5, 'sineInOut')
end
end
notetime = 211194 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls71', 7, ogposx7 + 0, 0.5, 'sineInOut')
noteTweenY('balls72', 7, ogposy7 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls73', 7, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls74', 7, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls75', 7, 1, 0.5, 'sineInOut')
end
end
notetime = 172794 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls01', 0, ogposx0 + 360.5, 0.5, 'sineInOut')
noteTweenY('balls02', 0, ogposy0 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls03', 0, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls04', 0, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls05', 0, 0.3, 0.5, 'sineInOut')
end
end
notetime = 172794 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls11', 1, ogposx1 + 360.5, 0.5, 'sineInOut')
noteTweenY('balls12', 1, ogposy1 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls13', 1, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls14', 1, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls15', 1, 0.3, 0.5, 'sineInOut')
end
end
notetime = 172794 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls21', 2, ogposx2 + 360.5, 0.5, 'sineInOut')
noteTweenY('balls22', 2, ogposy2 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls23', 2, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls24', 2, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls25', 2, 0.3, 0.5, 'sineInOut')
end
end
notetime = 172794 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls31', 3, ogposx3 + 360.5, 0.5, 'sineInOut')
noteTweenY('balls32', 3, ogposy3 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls33', 3, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls34', 3, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls35', 3, 0.3, 0.5, 'sineInOut')
end
end
notetime = 172794 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls51', 5, ogposx5 + -273, 0.5, 'sineInOut')
noteTweenY('balls52', 5, ogposy5 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls53', 5, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls54', 5, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls55', 5, 1, 0.5, 'sineInOut')
end
end
notetime = 172794 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls41', 4, ogposx4 + -280, 0.5, 'sineInOut')
noteTweenY('balls42', 4, ogposy4 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls43', 4, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls44', 4, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls45', 4, 1, 0.5, 'sineInOut')
end
end
notetime = 172794 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls71', 7, ogposx7 + -262.5, 0.5, 'sineInOut')
noteTweenY('balls72', 7, ogposy7 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls73', 7, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls74', 7, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls75', 7, 1, 0.5, 'sineInOut')
end
end
notetime = 172794 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls61', 6, ogposx6 + -266, 0.5, 'sineInOut')
noteTweenY('balls62', 6, ogposy6 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls63', 6, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls64', 6, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls65', 6, 1, 0.5, 'sineInOut')
end
end
lastconductorpos = ballssimulatorroblox
if curStep ~= lastCurStep then
    stepHit(curStep)
end
lastCurStep = curStep
if curBeat ~= lastCurBeat then
    beatHit(curBeat)
end
lastCurBeat = curBeat
HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSHDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDS(HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSH)
end
function onCreatePost()
addHaxeLibrary("FlxRect", "flixel.math")
addHaxeLibrary("FlxCamera", "flixel")
luaDebugMode = false --oopsies
end
--generated by methewhenmethes modchart editor