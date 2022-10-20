enableRating = true;

import flixel.text.FlxText;
import flixel.text.FlxTextBorderStyle;

var rings:Int = 0;
var ccounter:FlxSprite = null;

function create() {
    note.hitOnBotplay = true;
    note.frames = Paths.getSparrowAtlas("note/rings");
    note.colored = false;
    switch(note.noteDirection) {
        case 0:
            note.animation.addByPrefix("scroll", "ring instance 1");
        case 1:
            note.animation.addByPrefix("scroll", "ring instance 1");
        case 2:
            note.animation.addByPrefix("scroll", "ring instance 1");
        case 3:
            note.animation.addByPrefix("scroll", "ring instance 1");
        case 4:
            note.animation.addByPrefix("scroll", "ring instance 1");
    }
    note.splashColor = 0xFFFFE600;
    note.animation.addByPrefix("holdpiece", "hold piece");
    note.animation.addByPrefix("holdend", "hold end");
    
    note.scale.set(0.7, 0.7);
    note.updateHitbox();
    note.maxEarlyDiff *= 0.5;
    note.maxLateDiff *= 0.5;
    note.cpuIgnore = false;

    var counterpic = new FlxSprite(1133, 610).loadGraphic(Paths.image('ui/ring count'));
	add(counterpic);
	counterpic.cameras = [PlayState.camHUD];

    counter = new FlxText(1207, 606, 0, '', 10, false);
    counter.setFormat('counterfont', 60, 0xFFffcc33);
    counter.setBorderStyle(FlxTextBorderStyle.OUTLINE, 0xFFcc6600, 3, 1);
    counter.cameras = [PlayState.camHUD];
    add(counter);
}

function onMiss() {
    rings -= 1;
}

function onPlayerHit(direction:Int) {
    rings += 1;
    trace(rings);
    counter.text = rings;
}