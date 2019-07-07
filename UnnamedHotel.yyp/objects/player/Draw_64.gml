if (keyboard_check(ord("E")) && can_interact){
	last_message = interact_object.interact_message;
	draw_text(x - 50, y - 150, last_message);
}