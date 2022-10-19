import flixel.text.FlxText;

var Three:FlxSprite = null;
var Two:FlxSptite = null;
var One:FlxSprite = null;
var Go:FlxSprite = null;

function createPost() {
    Three = new FlxSprite(0, 0);
    Three.loadGraphic(Paths.image('events/majin/three'));
    Three.screenCenter();
    add(Three);
    Three.cameras = [PlayState.camHUD];
    Three.alpha = 0.0001;

    Two = new FlxSprite(0, 0);
    Two.loadGraphic(Paths.image('events/majin/two'));
    Two.screenCenter();
    add(Two);
    Two.cameras = [PlayState.camHUD];
    Two.alpha = 0.0001;

    One = new FlxSprite(0, 0);
    One.loadGraphic(Paths.image('events/majin/one'));
    One.screenCenter();
    add(One);
    One.cameras = [PlayState.camHUD];
    One.alpha = 0.0001;

    Go = new FlxSprite(0, 0);
    Go.loadGraphic(Paths.image('events/majin/go'));
    Go.screenCenter();
    add(Go);
    Go.cameras = [PlayState.camHUD];
    Go.alpha = 0.0001;
}

function update() {
    switch(curStep){
        case 886:
            FlxTween.tween(Three, {alpha: 1}, Std.parseFloat(0.5), {ease: FlxEase.linear});
        case 891:
            FlxTween.tween(Three, {alpha:0}, Std.parseFloat(0.3), {ease: FlxEase.linear});
            FlxTween.tween(Two, {alpha: 1}, Std.parseFloat(0.5), {ease: FlxEase.linear});
        case 895:
            FlxTween.tween(Two, {alpha: 0}, Std.parseFloat(0.1), {ease: FlxEase.linear});
            FlxTween.tween(One, {alpha: 1}, Std.parseFloat(0.5), {ease: FlxEase.linear});
        case 899:
            FlxTween.tween(One, {alpha: 0}, Std.parseFloat(0.1), {ease: FlxEase.linear});
            FlxTween.tween(Go, {alpha: 1}, Std.parseFloat(0.5), {ease: FlxEase.linear});
        case 905:
            FlxTween.tween(Go, {alpha: 0}, Std.parseFloat(0.1), {ease: FlxEase.linear});
            FlxTween.tween(Two, {alpha: 0}, Std.parseFloat(0.1), {ease: FlxEase.linear});
            FlxTween.tween(Three, {alpha: 0}, Std.parseFloat(0.1), {ease: FlxEase.linear});
            FlxTween.tween(One, {alpha: 0}, Std.parseFloat(0.1), {ease: FlxEase.linear});
            PlayState.timerNow.alpha = 0;
            PlayState.timerFinal.alpha = 0;
            PlayState.timerText.text = 'INFINATE:INFINATE';
    }
}