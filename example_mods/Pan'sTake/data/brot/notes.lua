local Strums_Texture = 'pantastic'
local Notes_Texture = 'pantastic'

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