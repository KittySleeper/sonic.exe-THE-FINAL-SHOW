var sonic_pixel_lol:Character = null;
var bf_pixel_lol:Character = null;
var ange_boi:Character = null;
var the_original_place:FlxSprite = null;
var staticy_static:FlxSprite = null;

function createPost(){
            the_original_place = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/round two forest/GreenHill'));
            the_original_place.scale.set(9, 9);
            the_original_place.screenCenter();
            the_original_place.visible = false;
            add(the_original_place);

            sonic_pixel_lol = new Character(0, -50, mod + ":" + "pixelsonicbutexe");
            dads.push(sonic_pixel_lol);
            sonic_pixel_lol.scale.set(9, 9);
            sonic_pixel_lol.visible = false;
            add(sonic_pixel_lol);

            bf_pixel_lol = new Character(800, -50, mod + ":" + "bfpixelbutexe");
            bf_pixel_lol.scale.set(9, 9);
            boyfriends.push(bf_pixel_lol);
            bf_pixel_lol.visible = false;
            add(bf_pixel_lol);

            ange_boi = new Character(PlayState.dad.x, PlayState.dad.y - 32, mod + ":" + "ycr-mad");
            dads.push(ange_boi);
            ange_boi.visible = false;
            add(ange_boi);

            staticy_static = new FlxSprite();
            staticy_static.frames = Paths.getSparrowAtlas('events/Static');
            staticy_static.animation.addByPrefix('staticlol', 'Static', 23);
            staticy_static.animation.play('staticlol', true);
            staticy_static.screenCenter();
            staticy_static.antialiasing = true;
            staticy_static.scale.set(3, 3);
            staticy_static.cameras = [PlayState.camHUD];
            staticy_static.visible = false;
            add(staticy_static);
}
function update() {
    switch(curStep){
        case 528:
            trace("pixel...");

            the_original_place.visible = true;
            sonic_pixel_lol.visible = true;
            bf_pixel_lol.visible = true;

            PlayState.iconP2.changeCharacter("pixelsonicbutexe");

            PlayState.iconP1.changeCharacter("bfpixelbutexe");
            staticy_static.visible = true;
            FlxG.sound.play(Paths.sound('staticsoundgobrr'));
        case 530:
            staticy_static.visible = false;
        case 784:
            the_original_place.visible = false;
            sonic_pixel_lol.visible = false;
            bf_pixel_lol.visible = false;
            PlayState.dad.visible = false;
            PlayState.iconP1.changeCharacter("bf", "Friday Night Funkin'");
            PlayState.iconP2.changeCharacter("ycr-mad");
            ange_boi.visible = true;
            staticy_static.visible = true;
            FlxG.sound.play(Paths.sound('staticsoundgobrr'));
        case 786:
            staticy_static.visible = false;
        case 790://for people with lag cuz i alwas get a lag spike after the pixel part
            staticy_static.visible = false;
    }
}
function onDadHit(){
    if(curStep > 784)
    FlxG.camera.shake(0.03, 0.03);
}