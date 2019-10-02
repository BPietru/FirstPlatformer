//begin

x = oPlayer.x - 15;
y = oPlayer.y - 15;

image_angle = point_direction (x, y, mouse_x, mouse_y);

firingdelay = firingdelay - 1; 
recoil = max(0, recoil -1);         
if(mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay = 5;
	recoil = 4;
	with (instance_create_layer(x,y,"Bullets", oBullet))
	{
		speed = 13;
		direction = other.image_angle;
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if(keyboard_check_pressed(ord("Q")))
{
	instance_create_layer(x,y,"Gun", oSword)
	instance_destroy();
}
