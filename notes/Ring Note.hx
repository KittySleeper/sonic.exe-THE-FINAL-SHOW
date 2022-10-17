    var rings:Int = 0;
    var ringCounter:FlxSprite = null;
    var counterNum:FlxText = null;

    function create() {
        note.hitOnBotplay = true;
        note.frames = Paths.getSparrowAtlas("note/rings");
        note.colored = false;
        switch(note.noteDirection) {
            case 0:
                note.animation.addByPrefix("scroll", "ring");
            case 1:
                note.animation.addByPrefix("scroll", "ring");
            case 2:
                note.animation.addByPrefix("scroll", "ring");
            case 3:
                note.animation.addByPrefix("scroll", "ring");
            case 4:
                note.animation.addByPrefix("scroll", "rring");
        }
        note.splashColor = 0xFFFFCC33;
        
        note.scale.set(0.7, 0.7);
        note.updateHitbox();
        note.maxEarlyDiff *= 0.5;
        note.maxLateDiff *= 0.5;

        ringCounter = new FlxSprite(1133, 610).loadGraphic(Paths.image('events/ring count'));
        add(ringCounter);
        ringCounter.cameras = [PlayState.camHUD];

        counterNum = new FlxText(1207, 606, 0, 'null', 10, false);
        counterNum.setFormat('Tw Cen MT Condensed Extra Bold', 60, FlxColor.fromRGB(255, 204, 51), FlxTextBorderStyle.OUTLINE, FlxColor.fromRGB(204, 102, 0));
        counterNum.setBorderStyle(OUTLINE, FlxColor.fromRGB(204, 102, 0), 3, 1);
        add(counterNum);
        counterNum.cameras = [PlayState.camHUD];
    }

    function onMiss() {
    return false;
    }

    function onPlayerHit(direction:Int) {
    rings += 1;
    }

    function update(){
    counterNum.text = rings;
    }