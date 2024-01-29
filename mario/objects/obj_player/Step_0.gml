keyleft = keyboard_check(vk_left)
keyright = keyboard_check(vk_right)
keyup = keyboard_check(vk_up)
keydown = keyboard_check(vk_down)
keyjump = keyboard_check(ord("Z"))
keyrun = keyboard_check(vk_shift)

if keyright && xspd < maxspd
	xspd += 0.2
else if keyleft && xspd > maxspd*-1
	xspd -= 0.2

if keydown && yspd < maxspd
	yspd += 0.2
else if keyup && yspd > maxspd*-1
	yspd -= 0.2

if !(keyleft || keyright)
	xspd = lerp(xspd,0,0.25)
if !(keyup || keydown)
	yspd = lerp(yspd,0,0.25)

if place_meeting(x+xspd,y,obj_solid)
{
	while !place_meeting(x+sign(xspd),y,obj_solid)
		x += sign(xspd)
	xspd = 0
}
if place_meeting(x,y+yspd,obj_solid)
{
	while !place_meeting(x,y+sign(yspd),obj_solid)
		y += sign(yspd)
	yspd = 0
}

x += xspd
y += yspd