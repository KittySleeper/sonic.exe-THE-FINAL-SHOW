import flixel.text.FlxTextBorderStyle;
import DiscordClient;
import LoadingState;
import flixel.FlxBasic;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

function create() {
	var bg = new FlxSprite(0, 0);
	bg.loadGraphic(Paths.image('menu/soundtest_bg'));
	add(bg);
}

function update() {
    if(FlxG.keys.justPressed.ESCAPE){
    FlxG.switchState(new MainMenuState());
}