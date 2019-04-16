// @discription create_menu_page
// @arg ["name1", type1, entries1...]
// @arg ["name2", type2, entries2...]


// how many elements  are in the menu is argument count

var _arg,i = 0;
repeat(argument_count){
	 _arg[i] = argument_count[i];
	 ++i;
}

// this function will not only create the grid but it will also return the id and stores it
var _ds_grid_id = ds_grid_create(5, argument_count


i = 0; repeat(argument_count){
	 var _array = _arg[i];
	 var _array_len = array_length_1d(array);
	 
	 var _xx = 0; repeat(_array_len){
		_ds_grid_id[# _xx, i] = _array[xx];
		++_xx;
	}
	
	++i;
}


return _ds_grid_id;