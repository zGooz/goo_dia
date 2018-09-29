/// button_set_location(coordinate type [_NUMBER_/_ARRAY_], widget id, number: [x:y] array: pos[])
// return: n/a

var t  = argument[0];
var i  = argument[1];
var px = argument[2]; 

var py = 0;            
if argument_count > 3 
   py = argument[3];  

with i  
{ if object_index != obj_button
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
    
  xt = (width >> 1) - ((SYM_H + string_width(info)) >> 1);
  yt = (height >> 1) - (max(SYM_H, string_height(info)) >> 1);    
  yt += location[Y];
  xt += location[X];      
  but_y = location[Y] + height;                          
}
