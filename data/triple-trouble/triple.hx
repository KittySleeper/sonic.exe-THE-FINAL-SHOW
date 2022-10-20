var beatdudeguyboicummypalfunnipalfriend:Character = null;
var boifriedbutstrang:Character = null;
var zenotreezfunniback:FlxSprite = null;
var funnizenopinzbg:FlxSprite = null;
var funnizenopinzflierk:FlxSprite = null;

function createPost() {
    cpuStrums.members[2].visible = false;
	cpuStrums.members[1].x += 50;
	cpuStrums.members[0].x += 50;
	cpuStrums.members[4].x -= 65;
	cpuStrums.members[3].x -= 65;

	funnizenopinzbg = new FlxSprite(0, 0).loadGraphic(Paths.image("Phase3/NewTitleMenuBg"));
	funnizenopinzbg.frames = Paths.getSparrowAtlas('NewTitleMenuBG');
	funnizenopinzbg.animation.addByPrefix('idle', "TitleMenuSSBG instance 1", 24);
	funnizenopinzbg.animation.play('idle');
	funnizenopinzbg.screenCenter();
	funnizenopinzbg.scale.x = 4.5;
	funnizenopinzbg.scale.y = 4.5;
	funnizenopinzbg.visible = false;
	add(funnizenopinzbg);

	zenotreezfunniback = new FlxSprite(-621.1, -395.65);
    zenotreezfunniback.loadGraphic(Paths.image('stages/round three forest/BackTrees'));
	zenotreezfunniback.visible = false;
	add(zenotreezfunniback);

	funnizenopinzflierk = new FlxSprite(-621.1, -395.65);
    funnizenopinzflierk.loadGraphic(Paths.image('stages/round three forest/Grasszeno'));
	funnizenopinzflierk.visible = false;
	add(funnizenopinzflierk);

	beatdudeguyboicummypalfunnipalfriend = new Character(PlayState.dad.x, PlayState.dad.y - 300.8, mod + ":" + "zenopainzfunnimanXD");
    dads.push(beatdudeguyboicummypalfunnipalfriend);
	beatdudeguyboicummypalfunnipalfriend.visible = false;
	add(beatdudeguyboicummypalfunnipalfriend);

	boifriedbutstrang = new Character(PlayState.boyfriend.x, PlayState.boyfriend.y - 300, mod + ":" + "bf-beast-pov");
    boyfriends.push(boifriedbutstrang);
	boifriedbutstrang.visible = false;
	add(boifriedbutstrang);
}

function update(){
	switch(curStep){
	case 1039:
		beatdudeguyboicummypalfunnipalfriend.visible = true;
		boifriedbutstrang.visible = true;
		PlayState.iconP2.changeCharacter("zenopainzfunnimanXD");
		zenotreezfunniback.visible = true;
		funnizenopinzbg.visible = true;
		funnizenopinzflierk.visible = true;
		PlayState.defaultCamZoom = 0.8;
	}
}