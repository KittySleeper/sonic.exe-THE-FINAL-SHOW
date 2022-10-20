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
    case 'too-slow':
    creds.text = 'Credits\n\nPorters\n[504]brandon\n\nOG CODE\nJackie.exe\n\nARTWORK\nCherribun\nComgaming\n\nMUSIC\nMarStarBro\nSaster\n\nCHARTING\nWilde';
    creds.x = 510.3;
    case 'too-slow-encore':
    creds.text = 'Credits\n\nPorters\n[504]brandon\n\nComposers\nStarMoBro\nSaster';
    creds.x = 502.3;
    case 'you-cant-run':
    creds.text = 'Credits\n\nPorters\n[504]brandon\n\nComposers\nStarMoBro\nsaster';
    creds.x = 502.3;
    case 'endless-encore':
    creds.text = 'Credits\nPorters\n[504]brandon\n\nCharters\nGodzillaGang\n\nComposers\nStarMoBro';
    creds.x = 502.3;
    case 'prey':
    creds.text = 'you shouldent be able to see this...';
    default:
    creds.text = 'no creds found\n  :nobitches:';
    creds.x = 489.3;
    }
}

function update() {
    if(curStep == 34){
    FlxTween.tween(box, {y: -1000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    FlxTween.tween(creds, {y: -1000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    }
}