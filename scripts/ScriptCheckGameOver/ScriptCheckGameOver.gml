///ScriptCheckGameOver(lastPlayer)
var lastPlayer = argument0
if (lastPlayer == "X") {
	global.turn = "O"
} else {
	global.turn = "X"
}

var t1 = inst_tile1.owner
var t2 = inst_tile2.owner
var t3 = inst_tile3.owner
var t4 = inst_tile4.owner
var t5 = inst_tile5.owner
var t6 = inst_tile6.owner
var t7 = inst_tile7.owner
var t8 = inst_tile8.owner
var t9 = inst_tile9.owner

var top = (t1 != "nobody" && t1 == t2 && t2 == t3)
var center = (t4 != "nobody" && t4 == t5 && t5 == t6)
var bottom = (t7 != "nobody" && t7 == t8 && t8 == t9)

var left = (t1 != "nobody" && t1 == t4 && t4 == t7)
var middle = (t2 != "nobody" && t2 == t5 && t5 == t8)
var right = (t3 != "nobody" && t3 == t6 && t6 == t9)

var backslash = (t1 != "nobody" && t1 == t5 && t5 == t9)
var slash = (t3 != "nobody" && t3 == t5 && t5 == t7)



if (top || center || bottom || left || middle || right || slash || backslash)
{
	var winner = "Nobody"
	if (top || left) { winner = t1 }
	if (center || middle || backslash || slash) { winner = t5 }
	if (bottom || right) { winner = t9 }
	ScriptGameOver(winner)
} else if (t1 != "nobody" && t2 != "nobody" && t3 != "nobody"
	&& t4 != "nobody" && t5 != "nobody" && t6 != "nobody"
	&& t7 != "nobody" && t8 != "nobody" && t9 != "nobody")
{
	ScriptGameOver("Nobody")
}
