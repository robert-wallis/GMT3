/// @description Tick Box
// You can write your code in this editor

if (global.winner != "") {
	return;
}
if (owner != "nobody") {
	return;
}

if (global.turn == "X") {
	owner = "X"
	sprite_index = SpriteX
	audio_play_sound_at(SoundX1, x, y, 0, 100, 300, 1, false, 1)
	ScriptCheckGameOver("X")
} else {
	owner = "O"
	sprite_index = SpriteO
	audio_play_sound_at(SoundO1, x, y, 0, 100, 300, 1, false, 1)
	ScriptCheckGameOver("O")
}

