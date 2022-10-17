import flixel.text.FlxText;

var funni_bar:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 2000000, 200, 0xff000000);
var another_funni_bar:FlxSprite = new FlxSprite().makeGraphic(FlxG.width * 200000, 200, 0xff000000);
var textThing:FlxText = new FlxText();

function createInFront(){
    funni_bar.screenCenter();
	funni_bar.y += 321;
    funni_bar.alpha = 0.00001;
	add(funni_bar);

    another_funni_bar.screenCenter();
	another_funni_bar.y -= 456;
    another_funni_bar.alpha = 0.00001;
	add(another_funni_bar);

    textThing.text = ("IM GONNA GETCHA");
    textThing.screenCenter(X);
    textThing.y = FlxG.height - 150;
    textThing.alpha = 0.00001;
    add(textThing);
}

function update(){
    if (curStep == 1304){
    FlxTween.tween(PlayState.camHUD, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(textThing, {alpha: 1}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(funni_bar, {alpha: 1}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(another_funni_bar, {alpha: 1}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    }

    if (curStep == 1304){
    textThing.text = ("I AM....");
    }

    if (curStep == 1385){
    textThing.text = ("*laughs*");
    }

    if(curStep == 1433){
    FlxTween.tween(PlayState.camHUD, {alpha: 1}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(funni_bar, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(another_funni_bar, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(textThing, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(funni_bar, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(another_funni_bar, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    }
}