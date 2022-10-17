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
        case 784:
            the_original_place.visible = false;
            sonic_pixel_lol.visible = false;
            bf_pixel_lol.visible = false;
            PlayState.dad.visible = false;
            PlayState.iconP2.changeCharacter("bf");

            ange_boi = new Character(PlayState.dad.x, PlayState.dad.y - 32, mod + ":" + "ycr-mad");
            PlayState.iconP2.changeCharacter("ycr-mad");
            dads.push(ange_boi);
            add(ange_boi);
    }
}
function onDadHit(){
    if(curStep > 784)
    FlxG.camera.shake(0.03, 0.03);
}