draw_rectangle(0, 0, array_length_1d(list) * 64, 64, true);
for (i = 0; i < array_length_1d(list); i += 1){
	current_item_id = list[i];
	current_sprite_id = object_get_sprite(current_item_id);
	draw_sprite(current_sprite_id, 0, i * 64, 0);
}