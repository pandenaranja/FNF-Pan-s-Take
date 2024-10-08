local allowCountdown = false
function onStartCountdown()
    -- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
    if not allowCountdown and isStoryMode and not seenCutscene then
        setProperty('inCutscene', true);
        runTimer('startDialogue', 0.8);
        allowCountdown = true;
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'startDialogue' then -- Timer completed, play dialogue
        startDialogue('dialogue', 'EpicDialogue');
    end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
    -- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
    -- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end
local Strums_Texture = 'fabian_notes'
local Notes_Texture = 'fabian_notes'

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