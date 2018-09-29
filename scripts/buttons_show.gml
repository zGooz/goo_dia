/// buttons_show()
// return: n/a

for (var i = 0; i < size; i++)
{ var yu = but_y + (height + v_bord) * i; 
  but_unit[| i] = button_init(button.BTN_PLAIN, location[X], yu, width, height, but_info[| i], -1);       
  with but_unit[| i] parent = other.id;           
}    
