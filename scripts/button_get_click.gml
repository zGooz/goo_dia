/// button_get_click(id) 
// return: boollean

with argument0  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);
    
  var xx = location[X] + width;
  var yy = location[Y] + height;      
  return point_in_rectangle(MOUSE_X, MOUSE_Y, location[X], location[Y], xx, yy)
         * mouse_check_button_pressed(mb_left);
}
