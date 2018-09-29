/// textbox_draw_select_row(up)
// return: n/a

var u = argument0; 
if side_collumn > collumn 
{ l = collumn; 
  r = side_collumn;
} 
else   
{ l = side_collumn; 
  r = collumn;
}   

if r < left || l > left + lim_hor exit;      
var sh = max(0, l - left);
var sv = max(0, u - top);
var w = min(r - l, lim_hor - sh);
w  *= SYM_W;
sh *= SYM_W;
sv *= SYM_H; 
auto_draw_rectangle(sh, sv, t_fore, w, SYM_H);  
