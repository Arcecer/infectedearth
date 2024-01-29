keyleft = keyboard_check(vk_left)
keyright = keyboard_check(vk_right)
keyup = keyboard_check(vk_up)
keydown = keyboard_check(vk_down)
keyjump = keyboard_check(ord("Z"))
keyrun = keyboard_check(vk_shift)

switch state
{
	case "idle":
		scr_playeridle()
		break
	case "move":
		scr_playermove()
		break
	case "jump":
		scr_playerjump()
		break
	default:
		show_message("where state :(((")
}

x += xspd
y += yspd