var i = 0, _array_len = array_length_1d(menu_pages);
repeat(_array_len){
	ds_grid_destroy(menu_pages[i]);
	++i;
}