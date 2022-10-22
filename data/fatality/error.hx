function createPost() {
    defaultCamZoom = 0.5;
    gf.visible = false;
    FlxG.resizeGame(960, 720);
	FlxG.resizeWindow(960, 720);
}

function onPsychEvent(Event:String, funninum1:Int, funninum2:Int) {
    switch(Event) {
      case "Fatality Popup":
        trace("you realy think i already ported fatality lol");
    case "Clear Popups":
        trace("lol the popups close here btw");
  }
}

function onPreEndSong() {
    FlxG.resizeGame(1280, 720);
	FlxG.resizeWindow(1280, 720);
}