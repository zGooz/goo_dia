/// button_press()
// return: n/a

if button_get_click(id)
{ is_open = !is_open;
  switch class
    { case button.BTN_CICLE : 
          counter = clamp(++counter, 0, size);              
          if counter == size counter = 0;              
          button_set_info(id, but_info[| counter]);
          break;
          
    case button.BTN_SPLIT : 
          if is_open
             buttons_show();
          else
             buttons_hide();          
          break;
          
    case button.BTN_PLAIN :
          with parent
          { if class == button.BTN_SPLIT
            { button_set_info(id, other.info);
              buttons_hide();
              is_open = 0;
            }
          } 
          break;  
  }
}  
