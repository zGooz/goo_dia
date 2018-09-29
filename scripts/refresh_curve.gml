/// refresh_curve()
// return: n/a

var h = SYM_H >> 1;
var xx = x + count * SYM_W;
xx += SYM_H + h;

for (var i = 1; i < Size; i++)
{ var a = Active[| i];
  if is_undefined(a) continue;
  var yy = y + SYM_H * i + h;

  if instance_exists(a)
  { var p = Path[| i];
    if is_undefined(p) continue;
    if !path_exists(p) continue;       
    refresh_path(p, a, xx, yy);                 
  }
}
