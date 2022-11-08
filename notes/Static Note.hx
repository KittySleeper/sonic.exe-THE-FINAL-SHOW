    enableRating = true;

    function create() {
        note.hitOnBotplay = true;
        if(PlayState.storyDifficulty.toLowerCase() == 'sillycore')
        note.frames = Paths.getSparrowAtlas("note/sillynotes");
        else
        note.frames = Paths.getSparrowAtlas("note/STATICNOTE_assets");
        note.colored = false;
        switch(note.noteDirection) {
            case 0:
                note.animation.addByPrefix("scroll", "purple");
            case 1:
                note.animation.addByPrefix("scroll", "blue");
            case 2:
                note.animation.addByPrefix("scroll", "green");
            case 3:
                note.animation.addByPrefix("scroll", "red");
        }
        note.splashColor = 0xFFFF0000;
        note.animation.addByPrefix("holdpiece", "hold piece");
        note.animation.addByPrefix("holdend", "hold end");
        
        note.scale.set(0.7, 0.7);
        note.updateHitbox();
        note.maxEarlyDiff *= 0.5;
        note.maxLateDiff *= 0.5;
        note.cpuIgnore = false;
    }

    function onMiss() {
    trace("lol satic momen");
    PlayState.health -= 0.05;
    PlayState.misses += 1;
    }