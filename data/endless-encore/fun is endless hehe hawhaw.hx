var majin_fun:FlxSprite = null;

function createPost() {
    majin_fun = new FlxSprite();
    majin_fun.frames = Paths.getSparrowAtlas('events/majin/endlessfun');
    majin_fun.animation.addByPrefix('anim', 'endlessfun');
    majin_fun.scrollFactor.x = 1.2;
    majin_fun.scrollFactor.y = 1.2;
    majin_fun.updateHitbox();
    majin_fun.screenCenter();
    majin_fun.antialiasing = true;
    majin_fun.visible = false;
    majin_fun.x = dad.x - 10;
    majin_fun.y = dad.y - 43;
    majin_fun.scale.set(1.5, 1.5);
    add(majin_fun);
}

function update() {
    switch curStep{
case 254:
    dad.visible = false;
    majin_fun.visible = true;
    majin_fun.animation.play('anim');
case 271:
    dad.visible = true;
    majin_fun.visible = false;
    }
}