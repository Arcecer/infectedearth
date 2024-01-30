function scr_playermove(){
	if keyright && xspd < maxspd
		xspd += 0.2
	else if keyleft && xspd > maxspd*-1
		xspd -= 0.2
	if !(keyleft || keyright)
		state = "idle"
	if keyjump2
	{
		yspd = jump
		state = "jump"
	}
	scr_playercollide(true,true)
}