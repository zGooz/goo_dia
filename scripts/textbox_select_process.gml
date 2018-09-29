/// textbox_select_process()
// return: n/a

side_collumn = ((MOUSE_X - location[X]) div SYM_W) + left;
side_row = ((MOUSE_Y - location[Y]) div SYM_H) + top;
side_collumn = clamp(side_collumn, 0, Length);
side_row = clamp(side_row, 0, size - 1);
