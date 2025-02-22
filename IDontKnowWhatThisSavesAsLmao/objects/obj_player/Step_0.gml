//Variable for Horizontal movement. Takes the value of if the D key is pressed and subtracts the value of if the A key is pressed
//If D is pressed, value is +1, which moves the character right. If A is pressed, Val is -1, which moves the character left
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));

//Same premise as above just for vertical movement. Seems inverted to me.
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Move and collide takes three params, How to move horizontally, how to move vertically, and the tilemap with the collision
//in which we shouldn't move past
//Use undefined if you don't care about certain perameters. The last two move_speeds determine how much your character
//moves when colliding into a wall
move_and_collide(_hor * move_speed, _ver*move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

//Movement animations!
if (_hor != 0 or _ver != 0){
    if(_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left    
}else{
    if(sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if(sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}