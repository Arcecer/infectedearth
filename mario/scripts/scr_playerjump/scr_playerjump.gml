function scr_playerjump(){
	if keyright && xspd < maxspd
		xspd += 0.2
	else if keyleft && xspd > maxspd*-1
		xspd -= 0.2
	yspd += grav
	scr_playercollide(true,true)
	if place_meeting(x,y+1,obj_solid)
		state = "idle"
}