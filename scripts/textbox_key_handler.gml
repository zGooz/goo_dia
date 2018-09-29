/// textbox_key_handler(key)
// return: n/a

var k = argument0;  

var s = string(doc[| row]);
var s1 = string(doc[| side_row]);
var l = string_length(s);                      
var l1 = string_length(s1);
var b = string_copy(s, 1, collumn);
var a = string_copy(s1, side_collumn + 1, l1 - side_collumn)
var lb = string_length(b);
var la = string_length(a);                                                   
is_fix = 1;

if keyboard_check(vk_control) 
{ if is_ctrl exit; 
  switch keyboard_key
  { case ord('A') : textbox_select_all(); is_fix = 0; is_ctrl = 1; break;                        
    case ord('X') : textbox_cut(b, a); is_ctrl = 1;                break;                        
    case ord('V') : textbox_insert(b, a); is_ctrl = 1;             break;                        
    case ord('Z') : textbox_undo_redo(); is_ctrl = 1;              break;
           
    case ord('C'): 
           var c = textbox_copy();               
           if c != "" clipboard_set_text(c);                
           is_fix = 0;
           break;   
  }   
  
  textbox_refresh_karet();
  textbox_refresh_field();    
  top = max(size - lim_ver, 0);
  left = max(Length - lim_hor, 0);                   
  scrollbar_set_param(ver_scroll, top, size);
  scrollbar_set_param(hor_scroll, left, Length);       
  exit;
}  

if state == text_box.TB_UNDO || state == text_box.TB_REDO 
   state = text_box.TB_EDIT;
   
if is_shift_karet
{ textbox_carrier_buffer(tb_buffer.BUF_OLD);  
  shift_caret = 0;
}

switch keyboard_key
{ case vk_down     : textbox_shift_karet(tb_key.TB_DOWN);   exit; break;       
  case vk_up       : textbox_shift_karet(tb_key.TB_UP);     exit; break;       
  case vk_left     : textbox_shift_karet(tb_key.TB_LEFT);   exit; break;       
  case vk_right    : textbox_shift_karet(tb_key.TB_RIGHT);  exit; break;  
  case vk_home     : textbox_shift_karet(tb_key.TB_HOME);   exit; break;  
  case vk_end      : textbox_shift_karet(tb_key.TB_END);    exit; break;                                                      
  case vk_pageup   : textbox_shift_karet(tb_key.TB_P_UP);   exit; break;       
  case vk_pagedown : textbox_shift_karet(tb_key.TB_P_DOWN); exit; break;                           
  case vk_tab      : textbox_shift_karet(tb_key.TB_TAB);    exit; break;
}       

if keyboard_check_pressed(vk_shift) || keyboard_check_pressed(vk_alt) 
|| keyboard_check_pressed(vk_escape) 
   exit;  

if is_undefined(k) k = '';   
k = string_replace_all(k, chr(13), '');
k = string_replace_all(k, chr(35), '');  

switch keyboard_key
{ case vk_enter :
         if size + 1 > row_limit { exit; break; }                    
         doc[| row] = b;
                 
         if row == side_row 
            ds_list_insert(doc, row + 1, a);   
         else
         { doc[| side_row] = a;             
           textbox_remove_rows(side_row - row - 1);
         }
         
         collumn = 0;
         side_collumn = 0;
         left = 0;            
         row++;
         side_row = row;       
             
         if row + 1 > top + lim_ver 
            top = min(++top, size);              
           
         textbox_input_or_clear(tb_change._ITC);                      
         break;
       
  case vk_backspace : case vk_delete :
         if row == side_row
         { if collumn == side_collumn
           { if keyboard_key == vk_backspace 
                b = string_copy(b, 1, --lb);  
             else 
                a = string_copy(a, 2, la);   
           }  
         } 
         else 
           textbox_remove_rows(side_row - row);  
         
         doc[| row] = b + a;
         collumn = string_length(b);
         side_collumn = collumn;
         side_row = row;           
         if collumn - 1 < left left = max(0, --left);               
         textbox_input_or_clear(tb_change._CTI);                 
         break;
       
  default :           
         if row != side_row 
            textbox_remove_rows(side_row - row);   
         
         doc[| row] = b + k + a;
         collumn = ++lb;
         side_collumn = collumn;
         side_row = row;                            
         if collumn + 1 > left + lim_hor left++;                                           
         textbox_input_or_clear(tb_change._ITC);        
}   
                             
textbox_carrier_buffer(tb_buffer.BUF_NEW);
textbox_refresh_karet();
textbox_refresh_field();                
