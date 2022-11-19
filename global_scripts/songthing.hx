var startCircle:FlxSprite = null;
var startText:FlxSprite = null;
var blackness = new FlxSprite(-600, -400).makeGraphic(9999, 9999, 0xFF010101);

function createPost() {
    add(blackness);

    startCircle = new FlxSprite(0, 0).loadGraphic(Paths.image('startassets/Circle-'+ PlayState.SONG.song.toLowerCase()));
    startCircle.x += 900;
    startCircle.scrollFactor.set(0, 0);
    add(startCircle);
    startText = new FlxSprite(0, 0).loadGraphic(Paths.image('startassets/Text-' + PlayState.SONG.song.toLowerCase()));
    startText.x -= 1200;
    startText.scrollFactor.set(0, 0);
    add(startText);

    new FlxTimer().start(0.6, function(tmr:FlxTimer)
    {
        FlxTween.tween(startCircle, {x: 0}, 0.5);
        FlxTween.tween(startText, {x: 0}, 0.5);
    });

    new FlxTimer().start(1.9, function(tmr:FlxTimer)
    {
        FlxTween.tween(blackness, {alpha: 0}, 1, {
            onComplete: function(twn:FlxTween)
            {
                remove(blackness);
                blackness.destroy();
            }
        });
        FlxTween.tween(startCircle, {alpha: 0}, 1, {
            onComplete: function(twn:FlxTween)
            {
                remove(startCircle);
                startCircle.destroy();
            }
        });
        FlxTween.tween(startText, {alpha: 0}, 1, {
            onComplete: function(twn:FlxTween)
            {
                remove(startText);
                startText.destroy();
            }
        });
    });
}