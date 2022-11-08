enableRating = false;

function create() {
    note.hitOnBotplay = false;
    if(PlayState.storyDifficulty.toLowerCase() == 'sillycore')
    note.frames = Paths.getSparrowAtlas("note/sillynotes");
    else
    note.frames = Paths.getSparrowAtlas("note/PHANTOMNOTE_assets");
    note.colored = true;
    switch(note.noteDirection) {
        case 0:
            note.animation.addByPrefix("scroll", "phantom left");
        case 1:
            note.animation.addByPrefix("scroll", "phantom down");
        case 2:
            note.animation.addByPrefix("scroll", "phantom up");
        case 3:
            note.animation.addByPrefix("scroll", "phantom right");
    }
    note.animation.addByPrefix("holdpiece", "hold piece");
    note.animation.addByPrefix("holdend", "hold end");
    
    note.scale.set(0.7, 0.7);
    note.updateHitbox();
    note.maxEarlyDiff *= 0.5;
    note.maxLateDiff *= 0.5;
    note.cpuIgnore = true;
}

function onMiss() {
}

function onPlayerHit(direction:Int) {
PlayState.health -= 0.10;
PlayState.misses += 1;
trace("lol u pressed it");
}