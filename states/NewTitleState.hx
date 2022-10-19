import haxe.Json;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.input.gamepad.FlxGamepad;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.system.FlxSound;
import flixel.system.ui.FlxSoundTray;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import lime.app.Application;
import CoolUtil;

var logospr:FlxSprite = null;
var titletxtspr:FlxSprite = null;
var bgbutitisreal:FlxSprite = null;

function create() {
    bgbutitisreal = new FlxSprite(0, 0);
    bgbutitisreal.frames = Paths.getSparrowAtlas('menu/titlestate/NewTitleMenubg');
    bgbutitisreal.animation.addByPrefix('idlecoolness', "TitleMenuSSBG instance 1", 24);
    bgbutitisreal.animation.play('idlecoolness', true);
    bgbutitisreal.alpha = .75;
    bgbutitisreal.scale.x = 3;
    bgbutitisreal.scale.y = 3;
    bgbutitisreal.antialiasing = true;
    bgbutitisreal.updateHitbox();
    bgbutitisreal.screenCenter();
    add(bgbutitisreal);

    logospr = new FlxSprite(0, 0);
    logospr.loadGraphic(Paths.image('menu/titlestate/logo'));
    logospr.antialiasing = true;

    logospr.scale.x = .5;
    logospr.scale.y = .5;

    logospr.screenCenter();

    add(logospr);

    titletxtspr = new FlxSprite(0, 0);
    titletxtspr.frames = Paths.getSparrowAtlas('menu/titlestate/titleEnterNEW');
    titletxtspr.animation.addByPrefix('idle', "Press Enter to Begin instance 1", 24);
    titletxtspr.animation.addByPrefix('press', "ENTER PRESSED instance 1", 19, false);
    titletxtspr.antialiasing = true;
    titletxtspr.animation.play('idle');
    titletxtspr.updateHitbox();
    titletxtspr.screenCenter();
    add(titletxtspr);

    var mFolder = Paths_.modsPath;
    
    var path = Paths.video('coolintro', mFolder);
    trace(path + " has been loaded");
    if (!Assets.exists(path)) {
        trace("Video not found.");
        return;
    }

    var videoSprite:FlxSprite = null;
    
    videoSprite = MP4Video.playMP4(Assets.getPath(path),
        function() {
            remove(videoSprite);
            FlxG.sound.play(Paths.sound('hehehawhaw but more hehehawhaw'));
            FlxG.camera.flash(0xFFedf5ef, 2.4);
            FlxG.sound.playMusic(Paths.music('spookysounds'));
        },
        // If midsong.
        false, FlxG.width, FlxG.height);

    videoSprite.scrollFactor.set();
    add(videoSprite);
}

function update() {
    if (FlxG.keys.justPressed.ENTER)
        EnterSelected();
}

function EnterSelected() {
    titletxtspr.animation.play('press');
    FlxG.sound.play(Paths.sound('hehehawhaw'));
    FlxG.switchState(new MainMenuState());
}
