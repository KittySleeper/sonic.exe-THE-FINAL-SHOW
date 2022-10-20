import flixel.text.FlxText;

var creds:FlxText;
var box:FlxSprite;

function createPost() {
    box = new FlxSprite(0, 0).loadGraphic(Paths.image("ui/box"));
    box.cameras = [PlayState.camHUD];
    box.setGraphicSize(Std.int(box.height * 0.8));
    box.screenCenter();
    box.y = -1000;
    add(box);

    creds = new FlxText(620.2, -1000, 0, '', 28);
    creds.cameras = [PlayState.camHUD];
    creds.setGraphicSize(Std.int(creds.width * 0.8));
    creds.updateHitbox();
    add(creds);
}

function onSongStart() {
    FlxTween.tween(box, {y: 0}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    FlxTween.tween(creds, {y: 0}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    switch (PlayState.SONG.song.toLowerCase()){
        case 'too-slow-encore':
            creds.text = '    porters\n[504]brandon\n    Composrs\nStarMoBro\nSaster';
        case 'you-cant-run':
            creds.text = '    porters\n[504]brandon\n    Composrs\nStarMoBro\nSaster\nidk the rest of the credits';
            creds.x = 502.3;
        default:
            creds.text = 'no creds found\n:nobitches:';
    }
}

function update() {
    if(curStep == 34){
    FlxTween.tween(box, {y: -1000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    FlxTween.tween(creds, {y: -1000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    }
}