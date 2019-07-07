if (distance_to_object(player) < 50){
	if (instance_exists(ghost)){
		can_use_item = true;
	draw_text(player.x - 50, player.y - 100, "HIDE!!!");
	}
	else{
	draw_text(player.x - 50, player.y - 100, "Look at locker");
	}
}