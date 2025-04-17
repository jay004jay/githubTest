right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));



//get xspeed and yspeed
xSpeed = (right_key - left_key) * move_speed;
ySpeed = (down_key - up_key) * move_speed;

//pause
if instance_exists(obj_pauser){
	xSpeed = 0;
	ySpeed = 0;
}

//set Sprite
mask_index = sprite[DOWN];

if(ySpeed == 0){
	if(xSpeed > 0){face = RIGHT};
	if(xSpeed < 0){face = LEFT};
};

if(xSpeed > 0 && face == LEFT){
	face = RIGHT;	
};

if(xSpeed < 0 && face == RIGHT){
	face = LEFT;
};

if(xSpeed == 0){
	if(ySpeed > 0){face = DOWN};
	if(ySpeed < 0){face = UP};
};

if(ySpeed > 0 && face == UP){
	face = DOWN;
};

if(ySpeed < 0 && face == DOWN){
	face = UP;
};

sprite_index = sprite[face]


//Collisions
if(place_meeting(x + xSpeed, y, obj_wall)){
	
	xSpeed = 0;
	
}

if(place_meeting(x, y + ySpeed, obj_wall)){
	
	ySpeed = 0;
	
}


//move player
x += xSpeed;
y += ySpeed;



//animate
if(xSpeed == 0 && ySpeed == 0){
	image_index = 0;
}

//depth
depth = -bbox_bottom;