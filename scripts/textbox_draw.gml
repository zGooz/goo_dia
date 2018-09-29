/// textbox_draw(id)
// return: n/a

with argument0
{ if object_index != obj_text_box
     show_error("incorrect object_index", 1);
  
  if surface_exists(field_surf)
  { surface_set_target(field_surf); 
    draw_clear(c_black);       
    draw_clear_alpha(c_black, 0);       
    draw_set_colour(c_back);
    auto_draw_rectangle(0, 0, t_back, width, height);        
    draw_set_colour(c_fore);
    
    textbox_draw_select_area();                
    draw_set_colour(c_fore_alt);
    draw_text(1, 1, field_data);         
    surface_reset_target();                
    draw_surface(field_surf, location[X], location[Y]);   
  }
  else
    field_surf = surface_create(width, height);                             
    
  var c = make_colour_rgb(138, 20, 255);    
  draw_set_colour(c);  
      
  if is_editing
  { if point_in_rectangle(karx, kary, location[X], 
    location[Y], location[X] + width, location[Y] + height) 
      draw_line_width(karx, kary, karx, kary + SYM_H - 2, 2);
  }
    
  scrollbar_draw(ver_scroll);
  scrollbar_draw(hor_scroll);  
}  
