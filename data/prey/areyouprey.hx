var bg:FlxBackdrop;
var floor:FlxBackdrop;

function createPost() {
    defaultCamZoom = 0.8;
    dad.y += 376.8;
    camHUD.visible = false;
    floor = new FlxBackdrop((Paths.image('stages/prey/stardustFloor')));
    floor.y += 1430.6;
    floor.alpha = 0.01;
    add(floor);
}
function create() {
    gf.visible = false;
    bg = new FlxBackdrop((Paths.image('stages/prey/stardustBg')));
    bg.alpha = 0.01;
    add(bg);
}

function update() {
    bg.x -= 5;
    floor.x -= 10;

    switch curStep{
        case 127:
            FlxG.camera.flash(0xFFedf5ef, 2.5);
            FlxTween.tween(dad, {x: 1201.8}, Std.parseFloat(2), {ease: FlxEase.linear});
            dad.playAnim('singLEFT', true);
            FlxTween.tween(bg, {alpha: 1}, Std.parseFloat(2), {ease: FlxEase.linear});
            FlxTween.tween(floor, {alpha: 1}, Std.parseFloat(2), {ease: FlxEase.linear});
            camHUD.visible = true;
        case 1536:
            FlxTween.tween(dad, {x: -1201.8}, Std.parseFloat(0.9), {ease: FlxEase.linear});
            FlxTween.tween(dad, {angle: 180}, Std.parseFloat(0.9), {ease: FlxEase.linear});
        case 1544:
            dad.alpha = 0;

    }
}