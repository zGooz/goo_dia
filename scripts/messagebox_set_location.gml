/// messagebox_set_location(coordinate type [_NUMBER_/_ARRAY_], widget id, number: [x:y] array: pos[])
// return: n/a

var t  = argument[0];  
var i  = argument[1];
var px = argument[2]; 

var py = 0; 
if argument_count > 3
   py = argument[3];      

with i
{ if object_index != obj_message_box
     show_error("incorrect object_index", 1);
  
  switch t
  { case _NUMBER_ :
          location[X] = px;
          location[Y] = py;      
          break;
    
    case _ARRAY_ :
          array_copy(location, X, px, 0, 2);  
          break; 
  }  
  
  var h = max(180, string_height(Message) + Button_height);
  var yy = location[Y] + h;
  var w = (width - Button_width * btnCnt) / (btnCnt + 1);
  var xx = location[X] + w; 
  xt = location[X] + SYM_W;
  yt = location[Y] + SYM_H;
  
  for (var i = 0; i < btnCnt; i++;)
  { var q = btn[| i];
    if is_undefined(q) continue;
    button_set_location(_NUMBER_, q, xx + (w + Button_width) * i, yy); 
  }    
}    
