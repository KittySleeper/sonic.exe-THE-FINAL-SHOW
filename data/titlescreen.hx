import CoolUtil;

function createPost() {
    FlxG.sound.music.stop();
    FlxG.switchState(new ModState("NewTitleState", mod));
}