/// screen_set_mode_ext(width, height, mode, use_appSurf)
// return: n/a

var w = argument0;         
var h = argument1;        
var m = argument2;  
var u = argument3;
     
application_surface_enable(1);                                   
window_set_fullscreen(m);

if window_get_fullscreen()
{ w = DISPLAY_WIDTH;
  h = DISPLAY_HEIGHT; 
}
else
{ w = min(w, DISPLAY_WIDTH);
  h = min(h, DISPLAY_HEIGHT);
}

if surface_exists(application_surface) 
   surface_resize(application_surface, w, h); 

var px = (DISPLAY_WIDTH >> 1) - (w >> 1);
var py = (DISPLAY_HEIGHT >> 1) - (h >> 1); 
view_wport[view_current] = w;
view_hport[view_current] = h;  

window_set_size(w, h);
window_set_position(max(0, px), max(0, py));
display_set_gui_size(w, h);              
application_surface_enable(u);  
