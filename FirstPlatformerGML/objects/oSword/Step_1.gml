/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y + 14;
image_angle = point_direction (x, y, mouse_x, mouse_y);


if(keyboard_check_pressed(ord("Q")))
{
	instance_create_layer(x,y,"Gun", oGun)
	instance_destroy();
}








