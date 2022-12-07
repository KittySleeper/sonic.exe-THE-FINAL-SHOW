var stage:Stage = null;
function create() {
	stage = loadStage('youtube 2013 cold');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}