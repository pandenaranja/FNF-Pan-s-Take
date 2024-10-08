function onCreate() -- backwards compatibility
	runHaxeCode([[
		for (note in game.unspawnNotes)
		{
			if (note.noteType == 'Third Player Note-GF Sing')
			{
				note.noteType == 'Third Player Note';
				note.noteData += 1,2,3,4;
				note.mustPress = true;
				note.noAnimation = false;
			}
		}
	]])
end