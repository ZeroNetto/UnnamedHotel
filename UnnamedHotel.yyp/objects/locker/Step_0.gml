if (distance_to_object(player) < 50 && keyboard_check_pressed(ord("E"))){
	interact_message = "phew";
	instance_destroy(player);
}
else if (!instance_exists(player) && keyboard_check_released(ord("E"))){
	instance_create_depth(500, 425, -1, player);
}