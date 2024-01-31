function scr_playermove(){
	sprite_index = spr_playerwalk
	image_speed = xspd * 0.25
	if keyright && xspd < maxspd
		xspd += 0.2
	else if keyleft && xspd > maxspd*-1
		xspd -= 0.2
	if !(keyleft || keyright)
		state = "idle"
	if xspd > 0
		image_xscale = 1
	else if xspd < 0
		image_xscale = -1
	if keyjump2
	{
		yspd = jump
		state = "jump"
	}
	yspd += grav
	scr_playercollide(true,true)
}