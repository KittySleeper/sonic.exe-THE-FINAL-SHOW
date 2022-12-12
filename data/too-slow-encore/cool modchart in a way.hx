var sonic_but_executeable:Character = null;

function createInFront() { //we do some preloading :troll:
    sonic_but_executeable = new Character(232.4, 104.2, mod + ":" + "sonicexe");
    sonic_but_executeable.visible = false;
    add(sonic_but_executeable);
}

function update() {
    if (curStep == 383){
    PlayState.camGame.visible = false;
    dads.push(sonic_but_executeable);
    PlayState.dad.visible = false;
    sonic_but_executeable.visible = true;
    PlayState.iconP2.changeCharacter("sonicexe");
    }

    if (curStep == 400) {
        PlayState.camGame.visible = true;
        trace("ohh dang he exe?");
    }
}