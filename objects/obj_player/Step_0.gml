/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left))
{
	spd = WALK_SPEED;
	animState = STATE_WALK;
	sprDir = 180;
} else if(keyboard_check_released(vk_left)) 
{
	spd = 0;
	animState = STATE_IDLE;
}

if (keyboard_check(vk_right))
{
	spd = WALK_SPEED;
	animState = STATE_WALK;
	sprDir = 0;
} else if(keyboard_check_released(vk_right)) 
{
	spd = 0;
	animState = STATE_IDLE;
}

speed = spd;
if(animState != lastAnimState) 
{
	image_index = 0;
	switch(animState) 
	{
		case STATE_WALK:
			sprite_index = spr_playerwalk;
		break;
		case STATE_RUN:
			sprite_index = spr_playerrun;
		break;
		default:
			sprite_index = spr_playerhit;
	}
}
direction = sprDir;
image_xscale = sprDir == 0 ? 1 : -1;
lastAnimState = animState;

