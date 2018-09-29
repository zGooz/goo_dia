/// button_init(class, x, y, width, height, info, data)
// return: id                  

var c  = argument0;    
var px = argument1;
var py = argument2;
var w  = argument3;
var h  = argument4;   
var t  = argument5;
var d  = argument6;

with instance_create(0, 0, obj_button)
{ class = c;   
  location[X] = px;
  location[Y] = py;     
  width = w;
  height = h;       
   
  xt = (width >> 1) - SYM_H;
  yt = (height >> 1) - SYM_H;    
  xt += location[X];    
  yt += location[Y];      
  but_y = location[Y] + height;  
          
  but_unit = ds_list_create();
  but_info = ds_list_create();  
        
  button_set_info(id, t); 
  button_set_data(id, d);    
  return id;
}
