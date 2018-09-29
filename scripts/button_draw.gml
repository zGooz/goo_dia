/// button_draw(id)
// return: noone

with argument0  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);
    
  draw_set_colour(c_back);
  auto_draw_rectangle(location[X], location[Y], t_back, width, height);    
  draw_set_colour(c_fore);
  auto_draw_rectangle(xt, yt, t_fore, SYM_H, SYM_H);    
  draw_set_colour(c_fore_alt);
  draw_text(xt + SYM_H + 2, yt, info);
  
  if class == button.BTN_SPLIT
  { if is_open
    { for (var i = 0; i < size; i++)
          button_draw(but_unit[| i]);
    }  
  }  
}
