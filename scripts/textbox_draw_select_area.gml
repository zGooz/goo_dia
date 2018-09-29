/// textbox_draw_select_area()
// retutn: n/temp_height

if collumn == side_collumn 
&& row == side_row 
   exit;   
  
var u, d, l, r;      
if side_row < row
{ u = side_row; 
  d = row; 
  l = side_collumn; 
  r = collumn; 
}                     
else
{ u = row; 
  d = side_row; 
  l = collumn; 
  r = side_collumn; 
}
  
var temp_height = top + lim_ver; 
var d_out = d + 1 > temp_height; 
var u_out = u < top;

if row == side_row
{ if d_out || u_out exit;    
  textbox_draw_select_row(u);              
  exit;
}
  
if u > --temp_height exit;  
var sh = clamp(l - left, 0, lim_hor);  
var w = lim_hor - sh;
sh *= SYM_W;
w  *= SYM_W;
var sv = clamp(u - top, 0, lim_ver);
sv *= SYM_H;    
var ua = u + 1;    
    
if ua > top
   auto_draw_rectangle(sh, sv, t_fore, w, SYM_H);

var sm = max(ua - top, 0);
sm *= SYM_H;    
var h;
var s = max(d - top, 0);  
h = d - ua;
if u_out h = s;
if d_out h = ++temp_height - ua;  
h *= SYM_H;
w = lim_hor * SYM_W;                            
auto_draw_rectangle(1, sm, t_fore, w, h);
var sd = max(0, s);
sd *= SYM_H;
s = clamp(r - left, 0, lim_hor);
h = SYM_H;
w = s * SYM_W; 

if !d_out && d + 1 > top
   auto_draw_rectangle(1, sd, t_fore, w, h);
