/// textbox_set_location(coordinate type [_NUMBER_/_ARRAY_], widget id, number: [x:y] array: pos[])
// return: n/a  

var t  = argument[0];
var i  = argument[1];
var px = argument[2]; 

var py = 0; 
if argument_count > 3 
   py = argument[3];         

with i
{ if object_index != obj_text_box
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
  
  xt = location[X] + 1; 
  yt = location[Y] + 1;                      
  karx = xt;
  kary = yt;         
  scrollbar_set_location(_NUMBER_, ver_scroll, location[X] + width, location[Y] + SYM_H);
  scrollbar_set_location(_NUMBER_, hor_scroll, location[X] + SYM_H, location[Y] + height);
}
