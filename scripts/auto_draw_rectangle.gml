/// auto_draw_rectangle(x, y, texture, width, height)
// return: n/a

var px = argument0;
var py = argument1;
var t  = argument2;
var w  = argument3;
var h  = argument4; 
  
var wx = px + w;
var hy = py + h;

draw_primitive_begin_texture(pr_trianglefan, t);
draw_vertex_texture(px, py, 0, 0);
draw_vertex_texture(wx, py, 1, 0);
draw_vertex_texture(wx, hy, 1, 1);
draw_vertex_texture(px, hy, 0, 1);
draw_primitive_end();  
