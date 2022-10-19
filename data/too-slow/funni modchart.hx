import flixel.text.FlxText;

var funni_bar = new FlxSprite(0, 0).makeGraphic(2111, 400, 0xFF010101);
var another_funni_bar = new FlxSprite(0, 0).makeGraphic(2111, 230, 0xFF010101);
var textThing:FlxText = new FlxText(494.0001, 832);//man i realy needed that .0001

function createInFront(){
    funni_bar.screenCenter();
	funni_bar.y = -170;
    funni_bar.alpha = 0.00001;
	add(funni_bar);

    another_funni_bar.screenCenter();
	another_funni_bar.y = 786;
    another_funni_bar.alpha = 0.00001;
	add(another_funni_bar);

    textThing.alpha = 0.00001;
    textThing.scale.set(5, 5);
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
    textThing.text = ("i'm gonna getcha...");
    }

    if (curStep == 1343){
    textThing.text = ("i am...");
    }

    if(curStep == 1362){
    textThing.text = ("GOD");
    }

    if (curStep == 1385){
    textThing.text = ("*laughs*");
    }

    if(curStep == 1433){
    FlxTween.tween(PlayState.camHUD, {alpha: 1}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(textThing, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(funni_bar, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    FlxTween.tween(another_funni_bar, {alpha: 0}, Std.parseFloat(0.4), {ease: FlxEase.linear});
    }
}