/// textbox_cur_set_pos()
// return: n/a

var temp_collumn = collumn;
var temp_row = row;
collumn = ((MOUSE_X - location[X]) div SYM_W) + left;
row = ((MOUSE_Y - location[Y]) div SYM_H) + top;
collumn = clamp(collumn, 0, Length);
row = clamp(row, 0, size - 1);  
is_shift_karet = (temp_collumn != collumn) || (temp_row != row);
