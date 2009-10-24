var theStageAssistant = null;

function StageAssistant() {
}

StageAssistant.prototype.setup = function() {
  theStageAssistant = this;
  this.controller.pushScene('$SCENE');
}