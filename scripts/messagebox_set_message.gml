/// messagebox_set_message(id, text)
// return: n/a

var i = argument0;
var m = argument1;          

with i
{ if object_index != obj_message_box
     show_error("incorrect object_index", 1);    
  
  Message = string(m);   
  var h = max(180, string_height(Message) + Button_height);
  width = max(340, string_width(Message)) + (SYM_W << 1);
  height = h + SYM_H * 3; 
  Button_width = width / (btnCnt + 1);
  var yy = location[Y] + h;
  var w = (width - Button_width * btnCnt) / (btnCnt + 1);
  var xx = location[X] + w; 

  for (var i = 0; i < btnCnt; i++;)
  { var q = btn[| i];
    if is_undefined(q) continue;
    button_set_location(_NUMBER_, q, xx + (w + Button_width) * i, yy); 
  }   
}
