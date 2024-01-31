// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playeridle(){
	sprite_index = spr_playeridle
	xspd = lerp(xspd,0,0.25)
	if keyleft || keyright
		state = "move"
	if keyjump2
	{
		yspd = jump
		state = "jump"
	}
	yspd += grav
	scr_playercollide(true,true)
}