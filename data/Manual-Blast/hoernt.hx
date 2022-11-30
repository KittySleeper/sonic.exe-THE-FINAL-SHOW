function update() {
    switch (curStep){
        case 513:
            FlxG.camera.visible = false;
            dfaultCamZoom = 0.6;
            dad.visible = false;
            var omg_scorched_from_fnf:Character = new Character(21, 210.5, mod + ":" + "beastbuthogreal");
            dads.push(omg_scorched_from_fnf);
            add(omg_scorched_from_fnf);
            dads.remove(dad);
        case 812:
            FlxG.camera.visible = true;
    }
}