import Sys;

var box = new FlxSprite();
var boxes = [];

function createPost() {
    defaultCamZoom = 0.5;
    gf.visible = false;
    FlxG.resizeGame(960, 720);
	FlxG.resizeWindow(960, 720);
}

function onPsychEvent(Event:String, funninum1:Int, funninum2:Int) {
    switch(Event) {
      case "Fatality Popup":
        trace('this will be complete eventually');
    case "Clear Popups":
        trace('w.i.p');
  }
}

function onPreEndSong() {
    FlxG.resizeGame(1280, 720);
	FlxG.resizeWindow(1280, 720);
}