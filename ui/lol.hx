var current:Int = 0;
var menuI:FlxTypedGroup<FlxSprite>;
var selectedSomethin:Bool = false;
var enableControls:Bool = false;

function create() {
	if (!save.data.mainMenu_doneAnimation) {
		save.data.mainMenu_doneAnimation = false;
		save.flush();
	}

	var everything = [
		"story mode", "freeplay", "encore", "options", "sound test"
	];
	for (i in everything)
		state.optionShit.remove(i);

	state.defaultBehaviour = true;
	state.autoCamPos = false;
	state.mouseControls = false; // woohoo fuck the mouse (not literally)

	menuI = new FlxTypedGroup();
}

function createPost() {
    var bgexe:FlxSprite = new FlxSprite();
    bgexe.frames = Paths.getSparrowAtlas('menu/Main_Menu_Spritesheet_Animation');
    bgexe.animation.addByPrefix('anim', 'BG instance 1');
    bgexe.animation.play('anim', true);
    bgexe.scrollFactor.x = 0;
    bgexe.scrollFactor.y = 0;
    bgexe.updateHitbox();
    bgexe.screenCenter();
    bgexe.antialiasing = true;
    add(bgexe);

	add(menuI);
	var shit:Array<String> = ["story mode", "freeplay", "encore", "options", "sound test"];

	for (i in 0...shit.length) {
        var offset:Float = 108 - (Math.max(shit.length, 4) - 4) * 80;
		var menuItem:MainMenuItem = new MainMenuItem(1000, (i * 120)  + offset);
		// menuItem.autoPos = false;
		if (i % 2 == 0)
			menuItem.x -= 600 + i * 800;
		else
			menuItem.x += 600 + i * 800;

		menuItem.frames = Paths.getSparrowAtlas('menu/exemenulol');
		menuItem.animation.addByPrefix('idle', shit[i] + ' basic', 1);
		menuItem.animation.addByPrefix('selected', shit[i] + ' white', 1);
		menuItem.animation.play('idle');
		menuItem.updateHitbox();
		menuItem.ID = i;
		menuItem.scrollFactor.set();
		menuItem.antialiasing = true;
		if (!save.data.mainMenu_doneAnimation)
			FlxTween.tween(menuItem, {x: (i * 120)  + offset}, 3000 + (i * 0.25), {
				ease: FlxEase.expoInOut,
				onComplete: function() {
					if (menuItem.ID == 3) {
						changeItem(0);
						enableControls = true;
						save.data.mainMenu_doneAnimation = true;
						save.flush();
					}
				}
			});
		else
			FlxTween.tween(menuItem, {x: (i * 120)  + offset}, 0.00001, {
				ease: FlxEase.expoInOut,
				onComplete: function() {
					if (menuItem.ID == 3) {
						changeItem(0);
						enableControls = true;
					}
				}
			});

		menuI.add(menuItem);
	}

	add(state.versionShit);
}

var canTween:Bool = true;

function update(elapsed) {
	var controls = FlxControls.justPressed;

	if (enableControls) {
		if (controls.ESCAPE || controls.BACKSPACE)
			FlxG.switchState(new TitleState());
		if (controls.UP || controls.W)
			changeItem(-1);
		if (controls.DOWN || controls.S)
			changeItem(1);
		if (controls.ENTER) {
			switch (menuI.members[current].ID) {
				case 0: // story mode
                FlxG.switchState(new StoryMenuState());
				case 1: // freeplay
					FlxG.switchState(new FreeplayState());
				case 3: // options
					FlxG.switchState(new options.screens.OptionMain());
                case 4: // options
                    FlxG.switchState(new ModState("SoundTestState", mod));
				default:
					FlxG.switchState(new MainMenuState());
                    trace('this is unfinnished');
			}
            removeOption('Donate');
		}
	}
}

function changeItem(huh:Int = 0) {
	current += huh;

	if (current >= menuI.length)
		current = 0;
	if (current < 0)
		current = menuI.length - 1;

	menuI.forEach(function(spr:FlxSprite) {
		spr.animation.play('idle');
		spr.offset.set(0, 0);

		if (spr.ID == current) {
			spr.animation.play('selected');
		}

		spr.updateHitbox();
	});
}