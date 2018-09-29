/// textbox_init(x, y, lim_hor, lim_ver, data, editing)
// return: id

var px = argument0;
var py = argument1;
var lh = argument2;
var lv = argument3;
var t  = argument4;
var e  = argument5;       

with instance_create(0, 0, obj_text_box) 
{ location[X] = px;
  location[Y] = py;    
  xt = location[X] + 1; 
  yt = location[Y] + 1;    
  lim_hor = lh;
  lim_ver = lv;    
   
  is_editing = e;     
  karx = xt;
  kary = yt;    
  width = SYM_W * lim_hor;
  height = SYM_H * lim_ver;     
  field_surf = surface_create(width, height); 
  c_fore = c_but;  
        
  doc = ds_list_create();
  old = ds_list_create();
  new = ds_list_create();      
  doc[| 0] = '';    
          
  textbox_set_data(id, t);                                                     
  return id; 
}              
