/// @description GUI/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 100;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin + 60;
menu_speed = 25;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_comitted = -1;
menu_control = true;
menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_cursor = 2;
menu_items = array_length_1d(menu);
