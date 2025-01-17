//gives the option to turn the screen fullsize

if keyboard_check_pressed(ord("vk_f4")){
	
	if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
	
}