var stage:Stage = null;
function create() {
	stage = loadStage('endless-forest');
}
function update(elapsed) {
	stage.update(elapsed);
}
function beatHit(curBeat) {
	stage.onBeat();
}