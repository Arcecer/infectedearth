function scr_playerjump(){
	if keyright
		xspd += 0.3
	else if keyleft
		xspd -= 0.3
	if yspd < -3 && !keyjump
		yspd = -3
	yspd += grav
	scr_playercollide(true,true)
	if place_meeting(x,y+1,obj_solid)
		state = "idle"
}