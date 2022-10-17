enableRating = false;

function create() {
    note.hitOnBotplay = false;
    note.frames = Paths.getSparrowAtlas("note/PHANTOMNOTE_assets");
    note.colored = true;
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