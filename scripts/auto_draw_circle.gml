/// auto_draw_circle(x, y, radius, dir, shift, texture, diametr)
// return: n/a

var cx = argument0;
var cy = argument1;
var r  = argument2;
var s  = argument3;
var sf = argument4;
var tx = argument5;
var dr = argument6;

var t = cx - r;
var b = cy + r;  
                         
draw_primitive_begin_texture(pr_trianglefan, tx);
draw_vertex_texture(cx, cy, 0.5, 0.5);

for (var i = 0; i < 361; i += 15)
{ var d = sf + i * s;
  var xx = cx + lengthdir_x(r, d);
  var yy = cy + lengthdir_y(r, d);  
  var u = 1 - (point_distance(t, yy, xx, yy) / dr);
  var v = 1 - (point_distance(xx, b, xx, yy) / dr);        
  draw_vertex_texture(xx, yy, u, v);  
}      
draw_primitive_end(); 
