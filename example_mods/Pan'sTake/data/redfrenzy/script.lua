function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.06 then
        setProperty('health', health- 0.017);
    end
end

local Strums_Texture = 'RedNotes'
local Notes_Texture = 'RedNotes'

function onUpdatePost()
  for i = 0, getProperty('opponentStrums.length')-1 do

    setPropertyFromGroup('opponentStrums', i, 'texture', Strums_Texture);

    if not getPropertyFromGroup('notes', i, 'mustPress') and getPropertyFromGroup('notes', i, 'noteType') == ('' or 'Hey!' or 'No Animation' or 'GF Sing') then
      setPropertyFromGroup('notes', i, 'texture', Notes_Texture);
    end

  end
end
--custom opponent note skin <3 V2.2
--credit to vCherry.kAI.16 <3 if you remove this text then you're not allowed to use this
--seriously thanks a lot for the script lol

local allowCountdown = false
local startedFirstDialogue = false
local startedEndDialogue = false

function onStartCountdown()
    if not allowCountdown and isStoryMode and not startedFirstDialogue then
        setProperty('inCutscene', true);
        runTimer('startDialogue', 0.8);
        startedFirstDialogue = true;
        return Function_Stop;
    end

    return Function_Continue;
end

function onEndSong()
    if not allowCountdown and isStoryMode and not startedEndDialogue then
        makeLuaSprite('dialoguebg', 'image', -650, 100);
        addLuaSprite('dialoguebg', true);
        setProperty('inCutscene', true);
        runTimer('startDialogueEnd', 0.8);
        startedEndDialogue = true;
        return Function_Stop;
    end

    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'startDialogue' then
        startDialogue('dialogue', 'RedDialogue');
    elseif tag == 'startDialogueEnd' then
        startDialogue('dialogueEnd', 'TBTheme');
    end
end