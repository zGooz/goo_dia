/// scrollbar_draw(id)
// return: n/a

with argument0
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);               

  switch class                 
  { case scroll_bar.SB_HOR : 
           draw_set_colour(c_but);                          
           var zx = location[X] - SYM_H;               
           auto_draw_rectangle(zx, location[Y], t_up_or_left_but, SYM_H, width);  
              
           zx = location[X] + full_length;             
           auto_draw_rectangle(zx, location[Y], t_down_or_right_but, SYM_H, width);                
           
           draw_set_colour(c_back);                            
           auto_draw_rectangle(location[X], location[Y], t_back, full_length, width);
                          
           draw_set_colour(c_fore);             
           zx = location[X] + current_shift;              
           auto_draw_rectangle(zx, location[Y], t_fore, current_length, width);                     
           break;
           
    case scroll_bar.SB_VER :
           draw_set_colour(c_but);             
           var zy = location[Y] - SYM_H; 
           auto_draw_rectangle(location[X], zy, t_up_or_left_but, width, SYM_H); 
                                      
           zy = location[Y] + full_length;
           auto_draw_rectangle(location[X], zy, t_down_or_right_but, width, SYM_H); 
           
           draw_set_colour(c_back);             
           auto_draw_rectangle(location[X], location[Y], t_back, width, full_length);                
           
           draw_set_colour(c_fore);             
           zy = location[Y] + current_shift;           
           auto_draw_rectangle(location[X], zy, t_fore, width, current_length);                       
           break;        
  }
}                 
