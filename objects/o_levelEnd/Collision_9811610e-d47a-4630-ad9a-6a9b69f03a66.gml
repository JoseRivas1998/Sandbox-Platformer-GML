/// @description Insert description here
// You can write your code in this editor
with(o_player) {
	if(hascontrol) {
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO, other.target);
	}
}