import flixel.math.FlxRandom;

var box = new FlxSprite();
var funnibgmain:FlxSprite;
var funnimen:FlxSprite;
var funnierrorbgstage2funni:FlxSprite;
var trueFatal:FlxSprite;

function createPost() {
    defaultCamZoom = 0.75;
    gf.visible = false;
    FlxG.resizeGame(960, 720);
	FlxG.resizeWindow(960, 720);
    FlxG.mouse.load(Paths.image("ui/fatal_mouse_cursor"), 1.5, 0);
}

function create() {
    funnibgmain = new FlxSprite(-200, 100);
    funnibgmain.frames = Paths.getSparrowAtlas('stages/fatal/launchbase');
    funnibgmain.animation.addByIndices('funnibgmainidlefunniness', 'idle', [0, 1, 2, 3, 4, 5, 6, 8, 9], "", 12, true);
    funnibgmain.animation.play('funnibgmainidlefunniness');
    funnibgmain.scale.x = 5;
    funnibgmain.scale.y = 5;
    funnibgmain.antialiasing = false;
    funnibgmain.scrollFactor.set(1, 1);
    add(funnibgmain);

    funnierrorbgstage2funni = new FlxSprite(100, 32);
    funnierrorbgstage2funni.frames = Paths.getSparrowAtlas('stages/fatal/domain2');
    funnierrorbgstage2funni.animation.addByIndices('theand', 'idle', [0, 1, 2, 3, 4, 5, 6, 8, 9], "", 12, true);
    funnierrorbgstage2funni.animation.play('theand');
    funnierrorbgstage2funni.scale.x = 6;
    funnierrorbgstage2funni.scale.y = 6;
    funnierrorbgstage2funni.antialiasing = false;
    funnierrorbgstage2funni.scrollFactor.set(1, 1);
    funnierrorbgstage2funni.visible = false;
    add(funnierrorbgstage2funni);

    funnimen = new FlxSprite(100, 198);
    funnimen.frames = Paths.getSparrowAtlas('stages/fatal/domain');
    funnimen.animation.addByIndices('bopin', 'idle', [0, 1, 2, 3, 4], "", 12, true);
    funnimen.animation.play('bopin');
    funnimen.scale.x = 4;
    funnimen.scale.y = 4;
    funnimen.antialiasing = false;
    funnimen.scrollFactor.set(1, 1);
    funnimen.visible = false;
    add(funnimen);

    trueFatal = new FlxSprite(250, 200);
    trueFatal.frames = Paths.getSparrowAtlas('stages/fatal/truefatalstage');
    trueFatal.animation.addByIndices('piss', 'idle', [0, 1, 2, 3], "", 12, true);
    trueFatal.animation.play('piss');
    trueFatal.scale.x = 5;
    trueFatal.scale.y = 5;
    trueFatal.antialiasing = false;
    trueFatal.scrollFactor.set(1, 1);
    trueFatal.visible = false;
    add(trueFatal);
}

function onPsychEvent(Event:String, funninum1:Int, funninum2:Int) {
    switch(Event) {
      case "Fatality Popup":
        box.frames = Paths.getSparrowAtlas("events/fatal/error_popups");
        box.animation.addByPrefix("a", "idle", 24, false);
        add(box);
        box.animation.play('a', true);
        box.setGraphicSize(Std.int(box.width * 2.5));
        box.x = FlxG.random.float(700);
        box.y = FlxG.random.float(600);
        box.visible = true;
        box.cameras = [PlayState.camHUD];
    case "Clear Popups":
        box.visible = false;
  }
}

function update() {
    if (FlxG.mouse.overlaps(box) && FlxG.mouse.justPressed){
        box.visible = false;
    }
    switch curStep{
        case 256:
            funnimen.visible = true;
            funnierrorbgstage2funni.visible = true;
        case 2240:
            trueFatal.visible = true;
            var fatal_beast = new Character(342, 165.3, mod + ":" + "beast-fatal");
            dad.visible = false;
            dads.push(fatal_beast);
            dads.remove(dad);
            add(fatal_beast);
    }
}

function onPreEndSong() {
    FlxG.resizeGame(1280, 720);
	FlxG.resizeWindow(1280, 720);
    FlxG.mouse.unload();
}