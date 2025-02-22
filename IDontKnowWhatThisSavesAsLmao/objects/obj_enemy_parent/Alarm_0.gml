//This is essentially a condition to check for to make the enemy moves

if(instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player){
    target_x = obj_player.x;
    target_y = obj_player.y;
}else{
    //Random spot 100 pixels from where the enemy currently is
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}

//makes this recurrsive. Happens every 60 frames or 1 second
alarm[0] = 60;