if (item != key2){
	if (object_exists(key2)){
		instance_destroy(key2);
	}
	
	if (!instance_exists(ghost)){
		instance_create_depth(50, 400, 1, ghost);
	}
}