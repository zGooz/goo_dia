/// button_set_bord(id, v_bord)
// return: n/a

var i = argument0;
var b = argument1;  
                      
with i  
{ if object_index != obj_button
     show_error("incorrect object_index", 1);    
  v_bord = b; 
}
