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
    creds.text = 'Credits\n\nPORTERS\n[504]brandon\n\nOG CODE\nJackie.exe\n\nARTWORK\nCherribun\nComgaming\n\nMUSIC\nMarStarBro\nSaster\n\nCHARTING\nWilde';
    creds.x = 510.3;
case 'too-slow-encore':
    creds.text = 'Credits\n\nPORTERS\n[504]brandonn\n\nOG CODE\nJackie.exe\n\nARTWORK\nCherribun\n[504]brandon\n\nCOMPOSERS\nStarMoBro\nSaster';
    creds.x = 502.3;
case 'you-cant-run':
    creds.text = 'Credits\n\nPORTERS\n[504]brandon\n\nCOMPOSERS\nStarMoBro\nsastern\n\nCHARTING\nWilde';
    creds.x = 502.3;
case 'endless-encore':
    creds.text = 'Credits\nPORTERS\n[504]brandon\n\nCHARTING\nGodzillaGang\n\nCOMPOSERS\nStarMoBro';
    creds.x = 502.3;
case 'prey':
    creds.text = 'Credits\n\nPORTERS\n[504]brandon\n\nOLD CODE\nAvery\nCryBit\n\nARTWORK\nAnarakWarriors\n\nMUSIC\nArmydillo\n\nCHARTING\nVentiVR';
    creds.x = 532;
case 'milk':
    creds.text = 'Credits\n\nPORTERS\n[504]brandon\n\nOLD CODE\nJackie.exe\n\nCHARTING\nNiffirg\n\nARTWORK\nComgaming_Nz\nStankfield\n\nMUSIC\nSqueak';
    creds.x = 521.8;
case 'confronting-yourself':
    creds.text = 'Credits\n\nPORTERS\n[504]brandon\nJustARock\n\nOLD CODE\nJotaMr\nJos9199\nMorenoTheCapuccinoChugger\n\nCOMPOSERS\nSaster\nTheKylevi\nPivelink\n\nCHARTERS\nRickyMania22';
    creds.x = 489.3;
    creds.scale.set(0.6, 0.6);
case 'fatality':
    creds.text = 'Credits\n\nPORTERS\n[504]brandon\n\nCODE\nJackie.exe\nAvery\nNebula\nCrybit\n\nARTWORK\nAnarakWarriors\n\nMUSIC\nSaster\n\nCHARTING\nniffirg';
    creds.x = 489.3;
    default:
    creds.text = 'no creds found\n  :nobitches:';
    creds.x = 489.3;
    }
}

function update() {
    if(PlayState.SONG.song.toLowerCase() == 'prey'){
    if(curStep == 127){
        FlxTween.tween(box, {y: 0}, Std.parseFloat(0.6), {ease: FlxEase.linear});
        FlxTween.tween(creds, {y: 0}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    }
}
if(PlayState.SONG.song.toLowerCase() == 'prey'){
    if(curStep == 210){
        FlxTween.tween(box, {y: -1000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
        FlxTween.tween(creds, {y: 1000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
        }
}

    if(curStep == 34){
    FlxTween.tween(box, {y: -1000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    FlxTween.tween(creds, {y: -1000}, Std.parseFloat(0.6), {ease: FlxEase.linear});
    }
}