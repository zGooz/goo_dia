/// scrollbar_init(class, x, y, view_count, width)
// return: id 

var c  = argument0;
var px = argument1;
var py = argument2;
var v  = argument3;
var w  = argument4; 

with instance_create(0, 0, obj_scroll_bar)
{ class = c;
  location[X] = px;
  location[Y] = py;  
  current_view_count = v;    
  width = w;
  
  c_but = make_colour_hsv(30, 22, 96);
  c_back = make_colour_hsv(200, 56, 12);
  c_fore = make_colour_hsv(12, 15, 255);
  
  switch class
  { case scroll_bar.SB_HOR :
            full_length = SYM_W * current_view_count - (SYM_W << 1);
            break;
    
    case scroll_bar.SB_VER :
            full_length = SYM_H * current_view_count - (SYM_H << 1);
            break;
  }
  
  current_length = full_length;  
  return id;
}
