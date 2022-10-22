var bg:FlxBackdrop;
var bgcover:FlxBackdrop;
var floor:FlxBackdrop;

function createPost() {
    defaultCamZoom = 0.8;
    dad.y += 210.8;
    boyfriend.y -= 100.8;
    camHUD.visible = false;
    floor = new FlxBackdrop((Paths.image('stages/prey/stardustFloor')));
    floor.y += 1430.6;
    floor.alpha = 0.01;
    add(floor);
}
function create() {
    gf.visible = false;
    bgcover = new FlxBackdrop((Paths.image('stages/prey/stardustBg')));
    bgcover.alpha = 0.01;
    add(bgcover);
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
            FlxTween.tween(dad, {x: 1201.8}, Std.parseFloat(5), {ease: FlxEase.linear});
            dad.playAnim('singLEFT', true);
            FlxTween.tween(bg, {alpha: 1}, Std.parseFloat(2), {ease: FlxEase.linear});
            FlxTween.tween(bgcover, {alpha: 1}, Std.parseFloat(2), {ease: FlxEase.linear});
            FlxTween.tween(floor, {alpha: 1}, Std.parseFloat(2), {ease: FlxEase.linear});
            camHUD.visible = true;
        case 1544:
            dad.alpha = 0;
            iconP2.changeCharacter("a-guy-whos-hungery");
            var red_starved_dude = new Character(10, dad.y, mod + ":" + "a-guy-whos-hungery");
            dads.push(red_starved_dude);
            add(red_starved_dude);
            FlxTween.tween(red_starved_dude, {x: 1201.8}, Std.parseFloat(2), {ease: FlxEase.linear});
            red_starved_dude.playAnim('YAYLKJOILEFHJUIOHIUJHGIURGHIUO FATE KEKHOG MEKMNEIJKHBIJBHJBGRIOHJRB HEHEIUJHSSUHSIKLJRHIKJHBE');
            boyfriend.playAnim('cool funni talk real?');
    }
}