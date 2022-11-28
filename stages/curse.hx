function createPost(){
    defaultCamZoom = 1.1;
    
    var lamp:FlxSprite = new FlxSprite(418, -61).loadGraphic(Paths.image('stages/curse/lamp'));
    lamp.updateHitbox();
    lamp.antialiasing = true;
    lamp.blend = BlendMode.ADD;
    lamp.scrollFactor.set(1.4, 1);

    add(lamp);

    gf.x -= 87;
}

function create() {
    var sky:FlxSprite = new FlxSprite(-20, -7).loadGraphic(Paths.image('stages/curse/sky'));
    sky.updateHitbox();
    sky.antialiasing = true;
    sky.scrollFactor.set(0, 0);
    add(sky);

    var cloudsBlurred:FlxSprite = new FlxSprite(-16, 25).loadGraphic(Paths.image('stages/curse/cloudsBlurred'));
    cloudsBlurred.updateHitbox();
    cloudsBlurred.antialiasing = true;
    cloudsBlurred.scrollFactor.set(1.4, 1.2);
    add(cloudsBlurred);

    var city:FlxSprite = new FlxSprite(-91, 115).loadGraphic(Paths.image('stages/curse/city'));
    city.updateHitbox();
    city.antialiasing = true;
    city.scrollFactor.set(0.7, 0.8);
    add(city);

    var sea:FlxSprite = new FlxSprite(-78, 569).loadGraphic(Paths.image('stages/curse/sea'));
    sea.updateHitbox();
    sea.antialiasing = true;
    sea.scrollFactor.set(0, 0.9);
    add(sea);

    var signpost:FlxSprite = new FlxSprite(95, 5).loadGraphic(Paths.image('stages/curse/signpost'));
    signpost.updateHitbox();
    signpost.antialiasing = true;
    signpost.scrollFactor.set(0.9, 1);
    add(signpost);

    var fence:FlxSprite = new FlxSprite(-118, 441).loadGraphic(Paths.image('stages/curse/fence'));
    fence.updateHitbox();
    fence.antialiasing = true;
    fence.scrollFactor.set(1.12, 1);
    fence.scale.x = 1.4;
    add(fence);

    var floor:FlxSprite = new FlxSprite(-431, 558).loadGraphic(Paths.image('stages/curse/floor'));
    floor.updateHitbox();
    floor.antialiasing = true;
    floor.scrollFactor.set(1, 1);
    floor.scale.set(1.3, 1.3);
    add(floor);
}

