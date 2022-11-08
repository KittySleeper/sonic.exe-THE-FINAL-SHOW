var zomike_but_evin_finnier:Character = null;

function createInFront() { //we do some preloading :troll:
    zomike_but_evin_finnier = new Character(80, -2.5, mod + ":" + "sonicexesilleyer");
    zomike_but_evin_finnier.visible = false;
    add(zomike_but_evin_finnier);
}

function update() {

    if (curStep == 383){
    PlayState.camGame.visible = false;
    dads.push(zomike_but_evin_finnier);
    PlayState.dad.visible = false;
    zomike_but_evin_finnier.visible = true;
    PlayState.iconP2.changeCharacter("sonicexesilleyer");
    }

    if (curStep == 400) {
        PlayState.camGame.visible = true;
        trace("ohh dang he sus?");
    }
}