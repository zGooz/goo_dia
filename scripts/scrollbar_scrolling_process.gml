/// scrollbar_scrolling_process();
// return: n/a

switch class
{ case scroll_bar.SB_HOR :
          var xx = location[X] + full_length;  
          var s = 0;        
                          
          if point_in_rectangle(MOUSE_X, MOUSE_Y, 
          location[X] - SYM_H, location[Y], location[X], location[Y] + width ) 
          { with parent 
            { left = max(0, --left);                                                          
              
              if object_index == asset_get_index("obj_text_box")
              { var t = "textbox_refresh_field";
                var a = asset_get_index(t);
              
                if script_exists(a)
                   script_execute(a);
                   
                t = "textbox_refresh_karet";
                a = asset_get_index(t);
                   
                if script_exists(a)
                   script_execute(a);
              }                             
              s = 1;
            }
          }
          
          if point_in_rectangle(MOUSE_X, MOUSE_Y, 
          xx, location[Y], xx + SYM_H, location[Y] + width) 
          { with parent
            { left = min(max(Length - lim_hor, 0), ++left);                                      
              
              if object_index == asset_get_index("obj_text_box")
              { var t = "textbox_refresh_field";
                var a = asset_get_index(t);
              
                if script_exists(a)
                   script_execute(a);
                   
                t = "textbox_refresh_karet";
                a = asset_get_index(t);
                   
                if script_exists(a)
                   script_execute(a);
              }                             
              s = 1; 
            }
          }        
              
          xx = location[X] + current_shift;                  
          if is_scrolling
          { var d = point_distance(xx, location[Y], MOUSE_X, location[Y] + width);  
                                
            with parent
            { var g = scrollbar_get_length(hor_scroll); 
                                       
              if d < (g >> 1) 
                 left = max(0, --left); 
              else 
                 left = min(max(0, Length - lim_hor), ++left);
                 
              if object_index == asset_get_index("obj_text_box")
              { var t = "textbox_refresh_field";
                var a = asset_get_index(t);
              
                if script_exists(a)
                   script_execute(a);
                   
                t = "textbox_refresh_karet";
                a = asset_get_index(t);
                   
                if script_exists(a)
                   script_execute(a);
              }               
              s = 1;                    
            } 
          } 
          
          if s 
          { with parent          
            { scrollbar_set_param(hor_scroll, left, Length);
              scrollbar_set_length(hor_scroll);
            }
          } break;
  
  case scroll_bar.SB_VER :
          var yy = location[Y] + full_length;
          var s = 0;    
                        
          if point_in_rectangle(MOUSE_X, MOUSE_Y, 
          location[X], location[Y] - SYM_H, location[X] + width, location[Y]) 
          { with parent
            { top = max(0, --top); 
                                   
              if object_index == asset_get_index("obj_text_box")
              { var t = "textbox_refresh_field";
                var a = asset_get_index(t);
              
                if script_exists(a)
                   script_execute(a);
                   
                t = "textbox_refresh_karet";
                a = asset_get_index(t);
                   
                if script_exists(a)
                   script_execute(a);
              }  
              
              if object_index == asset_get_index("obj_tree_view")
              { var t = "treeview_refresh";
                var a = asset_get_index(t);
                
                if script_exists(a)
                   script_execute(a);                
              }          
              s = 1;
            }
          }
            
          if point_in_rectangle(MOUSE_X, MOUSE_Y, 
          location[X], yy, location[X] + width, yy + SYM_H) 
          { with parent
            { top = min(max(0, size - lim_ver), ++top);  
                                    
              if object_index == asset_get_index("obj_text_box")
              { var t = "textbox_refresh_field";
                var a = asset_get_index(t);
              
                if script_exists(a)
                   script_execute(a);
                   
                t = "textbox_refresh_karet";
                a = asset_get_index(t);
                   
                if script_exists(a)
                   script_execute(a);
              } 
              
              if object_index == asset_get_index("obj_tree_view")
              { var t = "treeview_refresh";
                var a = asset_get_index(t);
                
                if script_exists(a)
                   script_execute(a);                
              }                            
              s = 1;       
            }  
          }  
            
          yy = location[Y] + current_shift;                  
          if is_scrolling
          { var d = point_distance(location[X], yy, location[X] + width, MOUSE_Y); 
                  
            with parent
            { var g = scrollbar_get_length(ver_scroll); 
                                 
              if d < (g >> 1) 
                 top = max(0, --top); 
              else 
                 top = min(max(0, size - lim_ver), ++top); 
                    
              if object_index == asset_get_index("obj_text_box")
              { var t = "textbox_refresh_field";
                var a = asset_get_index(t);
              
                if script_exists(a)
                   script_execute(a);
                   
                t = "textbox_refresh_karet";
                a = asset_get_index(t);
                   
                if script_exists(a)
                   script_execute(a);
              }  
              
              if object_index == asset_get_index("obj_tree_view")
              { var t = "treeview_refresh";
                var a = asset_get_index(t);
                
                if script_exists(a)
                   script_execute(a);                
              }                          
              s = 1;
            }  
          } 
          
          if s 
          { with parent
            { scrollbar_set_param(ver_scroll, top, size);
              scrollbar_set_length(ver_scroll);
            }
          } break;
}
