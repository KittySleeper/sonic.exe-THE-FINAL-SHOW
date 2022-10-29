var bg_cool_fire:FlxSprite = null;
var mountains_coolness:FlxSprite = null;
var ground_cool_i_guess:FlxSprite = null;

function createPost() {
    defaultCamZoom = 0.5;
    gf.visible = false;
}

function create() {
    bg_cool_fire = new FlxSprite(-876, -876);
    bg_cool_fire.frames = Paths.getSparrowAtlas('stages/confronting/Bg');
    bg_cool_fire.animation.addByPrefix('idlefirelol', "Bg idle", 24);
    bg_cool_fire.animation.play('idlefirelol', true);
    bg_cool_fire.scale.set(3.10, 2.10);
    bg_cool_fire.scrollFactor.set(0.8, 0.8);
    bg_cool_fire.updateHitbox();
    add(bg_cool_fire);

    mountains_coolness = new FlxSprite(-690, -300);
    mountains_coolness.frames = Paths.getSparrowAtlas('stages/confronting/Mountains');
    mountains_coolness.animation.addByPrefix('mountaincoolmove', "Mountains idle", 19);
    mountains_coolness.animation.play('mountaincoolmove', true);
    mountains_coolness.scrollFactor.set(0.8, 0.8);
    mountains_coolness.updateHitbox();
    add(mountains_coolness);

    ground_cool_i_guess = new FlxSprite(-690, -1321.4);
    ground_cool_i_guess.frames = Paths.getSparrowAtlas('stages/confronting/Floor');
    ground_cool_i_guess.animation.addByPrefix('ground_cool_run_anim', "Floor idle", 24);
    ground_cool_i_guess.animation.play('ground_cool_run_anim', true);
    ground_cool_i_guess.scale.set(2.8, 2.8);
    ground_cool_i_guess.updateHitbox();
    add(ground_cool_i_guess);
}

function onDadHit(){
    health -= 0.00643;
}