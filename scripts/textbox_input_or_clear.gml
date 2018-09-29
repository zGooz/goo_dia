/// textbox_input_or_clear(mode)
// return:n/a 

switch argument0
{ case tb_change._ITC :
         if is_first_clear
         { is_first_input = 1;         
           if is_first_input is_first_clear = 0;
         } 
         break;
    
  case tb_change._CTI :
         if is_first_input
         { is_first_clear = 1;         
           if is_first_clear is_first_input = 0;
         } 
         break; 
}                   
