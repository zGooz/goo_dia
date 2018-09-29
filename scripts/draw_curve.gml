/// draw_curve(path)
// return: n/a

var p = argument0;                  
if path_exists(p)
{ var j = 1;

  for (var i = 0; i < path_get_number(p) - 1; i++)
  { var cx = path_get_point_x(p, i);
    var cy = path_get_point_y(p, i); 
    var nx = path_get_point_x(p, j);
    var ny = path_get_point_y(p, j++);    
    draw_line_width(cx, cy, nx, ny, 3);                                   
  }                                                   
}                    
