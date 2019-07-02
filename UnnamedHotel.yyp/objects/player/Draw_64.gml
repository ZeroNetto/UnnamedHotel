draw_rectangle(0, 0, array_length_1d(player.items) * 64, 64, true);
for (i = 0; i < array_length_1d(player.items); i += 1){
	current_item_id = player.items[i];
	current_sprite_id = object_get_sprite(current_item_id);
	draw_sprite(current_sprite_id, 0, i * 64, 0);
}

if (keyboard_check(ord("E")) && can_interact){
	last_message = interact_object.interact_message;
	draw_text(x - 50, y - 150, last_message);
}