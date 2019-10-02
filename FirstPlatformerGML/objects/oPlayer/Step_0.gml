
if(hascontrol == true)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
var move = key_right - key_left; // -1, 0 , 1


hsp = move * walksp;
vsp = vsp + grv;
image_xscale = 2;
image_yscale = 2;
if(place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;
}

// horizontal col
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	
	hsp = 0;
}

x = x + hsp; // x is a coordinate on X axis

// vertical col
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	
	vsp = 0;
}

y = y + vsp; // x is a coordinate on X axis

//animation(lack of jump)

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if(vsp > 0) image_index = 1; else  image_index = 0;
}
else
{
	image_speed = 1;
	if(hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}
if (hsp != 0) image_xscale = sign(hsp) * 2;

//switching the idle sprite using states(like a moron)
if(sign(hsp) < 0 )
{
	state = 1;
}
if(sign(hsp) > 0 )
{
	state = 2;
}

if(state == 1)
{
	image_xscale = -2;
}

if(state == 2)
{
	image_xscale = 2;
}






