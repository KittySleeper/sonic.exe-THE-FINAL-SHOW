var path:String = 'menu/';
var itemselected:Int = 0;
var story:FlxSprite = null;
var free:FlxSprite = null;
var encore:FlxSprite = null;
var soundtest:FlxSprite = null;
var option:FlxSprite = null;

function createPost() {
    var bgexe:FlxSprite = new FlxSprite();
    bgexe.frames = Paths.getSparrowAtlas( path + 'Main_Menu_Spritesheet_Animation');
    bgexe.animation.addByPrefix('anim', 'BG instance 1');
    bgexe.animation.play('anim', true);
    bgexe.scale.set(1.1, 1.1);
    bgexe.scrollFactor.set(0, 0);
    bgexe.updateHitbox();
    bgexe.screenCenter();
    add(bgexe);

    story = new FlxSprite(596.3, 41.2);
    story.frames = Paths.getSparrowAtlas( path + 'menu_story_mode');
    story.animation.addByPrefix('idle', 'story_mode basic');
    story.animation.addByPrefix('select', 'story_mode white');
    story.scrollFactor.set(0, 0);
    story.updateHitbox();
    add(story);

    encore = new FlxSprite(645.3, 143.3);
    encore.frames = Paths.getSparrowAtlas( path + 'menu_encore');
    encore.animation.addByPrefix('idle', 'encore basic instance 1');
    encore.animation.addByPrefix('select', 'encore white instance 1');
    encore.scrollFactor.set(0, 0);
    encore.updateHitbox();
    add(encore);

    free = new FlxSprite(732.3, 232.3);
    free.frames = Paths.getSparrowAtlas( path + 'menu_freeplay');
    free.animation.addByPrefix('idle', 'freeplay basic instance 1');
    free.animation.addByPrefix('select', 'freeplay white instance 1');
    free.scrollFactor.set(0, 0);
    free.updateHitbox();
    add(free);

    soundtest = new FlxSprite(821.3, 321.3);
    soundtest.frames = Paths.getSparrowAtlas( path + 'menu_sound_test');
    soundtest.animation.addByPrefix('idle', 'sound_test basic');
    soundtest.animation.addByPrefix('select', 'sound_test white');
    soundtest.scrollFactor.set(0, 0);
    soundtest.updateHitbox();
    add(soundtest);

    option = new FlxSprite(908.3, 412.3);
    option.frames = Paths.getSparrowAtlas( path + 'menu_options');
    option.animation.addByPrefix('idle', 'options basic instance 1');
    option.animation.addByPrefix('select', 'options white instance 1');
    option.scrollFactor.set(0, 0);
    option.updateHitbox();
    add(option);
}

function update() {
    switch (itemselected){
        case 0:
            story.animation.play('select', true);
            encore.animation.play('idle', true);
            free.animation.play('idle', true);
            soundtest.animation.play('idle', true);
            option.animation.play('idle', true);
            if (FlxG.keys.justPressed.ENTER)
            FlxG.switchState(new StoryMenuState());
        case 1:
            story.animation.play('idle', true);
            encore.animation.play('select', true);
            free.animation.play('idle', true);
            soundtest.animation.play('idle', true);
            option.animation.play('idle', true);
            if (FlxG.keys.justPressed.ENTER)
                FlxG.switchState(new FreeplayState());
        case 2:
            story.animation.play('idle', true);
            encore.animation.play('idle', true);
            free.animation.play('select', true);
            soundtest.animation.play('idle', true);
            option.animation.play('idle', true);
            if (FlxG.keys.justPressed.ENTER)
                FlxG.switchState(new FreeplayState());
        case 3:
            story.animation.play('idle', true);
            encore.animation.play('idle', true);
            free.animation.play('idle', true);
            soundtest.animation.play('select', true);
            option.animation.play('idle', true);
            if (FlxG.keys.justPressed.ENTER)
                FlxG.switchState(new ModState("SoundTestState", mod));
        case 4:
            story.animation.play('idle', true);
            encore.animation.play('idle', true);
            free.animation.play('idle', true);
            soundtest.animation.play('idle', true);
            option.animation.play('select', true);
            if (FlxG.keys.justPressed.ENTER)
                FlxG.switchState(new options.screens.OptionMain());
        default:
            story.animation.play('idle', true);
            encore.animation.play('idle', true);
            free.animation.play('idle', true);
            soundtest.animation.play('idle', true);
            option.animation.play('idle', true);
            if (FlxG.keys.justPressed.ENTER){
                FlxG.switchState(new MainMenuState());
                trace('null state');
            }
    }

    if (itemselected < 0)
        itemselected = 4;
    if (itemselected > 4)
        itemselected = 0;

    if (FlxG.keys.justPressed.UP){
        itemselected -= 1;
        trace(itemselected);
    }
    if (FlxG.keys.justPressed.DOWN){
        itemselected += 1;
        trace(itemselected);
    }

    removeOption('Donate');//burn it
}