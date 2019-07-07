if (x < 1450 && gdir == 1){
	x += gspeed;
}
else {
	gdir = -1;
}

if (x > 50 && gdir == -1){
	x -= gspeed;
}
else {
	gdir = 1;
}

image_xscale = gdir;

if (distance_to_object(player) < 50){
	room_goto(game_end_room);
}