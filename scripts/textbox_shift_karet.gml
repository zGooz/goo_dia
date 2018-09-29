/// textbox_shift_karet(DIR);
// return: n/a

var z = size - 1;
switch argument0
{ case tb_key.TB_UP :
        row = max(--row, 0);                  
        if row - 1 < top top = max(--top, 0);                
        break;

  case tb_key.TB_DOWN :
          row = min(++row, size - 1);                            
          if row + 1 > top + lim_ver top = min(++top, z); 
          break;
      
  case tb_key.TB_LEFT :
          collumn = max(--collumn, -1);
          
          if collumn == -1
          { var s = string(doc[| max(row - 1, 0)]);
            var l = string_length(s);                
            left = max(0, l - lim_hor);
            collumn = l;
            row = max(--row, 0);                              
            if row - 1 < top top = max(--top, 0); 
            break; 
          }
              
          if collumn - 1 < left 
             left = max(0, left - lim_hor div 3);                 
          break;
  
  case tb_key.TB_RIGHT :
          collumn = min(++collumn, Length + 1);
          
          if collumn == string_length(string(doc[| row])) + 1
          { var s = string(doc[| min(z, row + 1)]);                    
            left = 0;
            collumn = 0;
            row = min(++row, z);   
                           
            if row + 1 > top + lim_ver 
               top = min(++top, z);             
            break; 
          }      
          
          if collumn + 1 > left + lim_hor
             left = min(Length, left + lim_hor div 3);           
          break;
  
  case tb_key.TB_END : 
          left = string_length(string(doc[| row]));
          left = clamp(left, 0, Lenght - lim_hor);
          collumn = left;  
          break;
  
  case tb_key.TB_HOME   : left = 0; collumn = 0; break;
  case tb_key.TB_P_UP   : top = 0; row = 0; break;
  case tb_key.TB_P_DOWN : top = max(z, 0); row = top; break;
  
  case tb_key.TB_TAB :
          ds_list_replace(doc, row, b + STRING_TAB + a);            
          collumn += 4;
          side_collumn = collumn;  
          break;
}   

if !keyboard_check(vk_shift)
{ side_row = row;
  side_collumn = collumn;
}      

textbox_refresh_karet();          
textbox_refresh_field();          
