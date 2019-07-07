if (keyboard_check(ord("A")) || keyboard_check(vk_left)){
	image_xscale = -1;
	x -= pspeed;
	image_speed = pimage_speed;
}
else if (keyboard_check(ord("D")) || keyboard_check(vk_right)){
	image_xscale = 1;
	x += pspeed;
	image_speed = pimage_speed;
}

else if (keyboard_check_pressed(ord("E")) && can_interact){
	if (interact_object.item != 0){
		items.list[array_length_1d(items.list)] = interact_object.item;
		interact_object.item = 0;
	}
	else if (interact_object.can_use_item){
		temp_items = [];
		offset = 0;
		for (i = 0; i < array_length_1d(items.list); i += 1){
			if (items.list[i] == interact_object.needed_item){
				interact_object.can_use_item = false;
				offset = 1;
			}
			else{
				temp_items[i - offset] = items.list[i];
			}
		}
		items.list = temp_items;
		
	}
	else if (interact_object.next_room != 0){
		room_goto(interact_object.next_room);
	}
	
}
else{
	image_speed = 0;
	image_index = 0;
}

for (i = 0; i < array_length_1d(interact_objects); i += 1){
	if (distance_to_object(interact_objects[i]) < 50){
		can_interact = true;
		interact_object = interact_objects[i];
		break;
	}
	else{
		can_interact = false;
		interact_object = 0;
	}
}