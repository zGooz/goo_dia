/// refresh_path(path, instance, x, y)
// return: n/a

var p  = argument0;
var a  = argument1;
var xx = argument2;
var yy = argument3;
    
path_clear_points(p);                
var _p = array_create(4);
var l_temp = ds_list_create();    

for (var j = 0; j < 4; j++)
{ _p[j] = ds_map_create();
  ds_list_add(l_temp, _p[j]);
} 

var sx_ = abs(xx - a.x);
var sy_ = abs(yy - a.y);
var _sx = sign(xx - a.x);
var _sy = sign(yy - a.y);

var m = _p[0];
if is_undefined(m) exit;
m[? X] = xx;
m[? Y] = yy;
 
if _sx ^^ _sy
{ m = _p[1];
  if is_undefined(m) exit; 
  m[? X] = xx + (1 / 3) * sx_ * (-_sx);
  m[? Y] = yy + (sy_ >> 1) * (-_sx);
  m = _p[2];
  if is_undefined(m) exit;
  m[? X] = xx + (2 / 3) * sx_ * _sy;
  m[? Y] = yy + (sy_ << 1) * (-_sy);    
}
else 
{ m = _p[1];
  if is_undefined(m) exit;
  m[? X] = xx + (1 / 3) * sx_ * (-_sx);
  m[? Y] = yy + (sy_ >> 1) * _sx;
  m = _p[2];
  if is_undefined(m) exit;
  m[? X] = xx + (2 / 3) * sx_ * (-_sy);
  m[? Y] = yy + (sy_ << 1) * (-_sy);                 
}

m = _p[3];
if is_undefined(m) exit;
var h = SYM_H >> 1;
m[? X] = a.x + h;
m[? Y] = a.y + h; 

if a.object_index == obj_pointer
{ m[? X] = a.x;
  m[? Y] = a.y;  
}

var _p0_ = _p[0];
var _p1_ = _p[1];
var _p2_ = _p[2];
var _p3_ = _p[3];   
path_add_point(p, _p0_[? X], _p0_[? Y], 100); 

var a_p0_p1 = point_direction(_p0_[? X], _p0_[? Y], _p1_[? X], _p1_[? Y]);
var a_p1_p2 = point_direction(_p1_[? X], _p1_[? Y], _p2_[? X], _p2_[? Y]); 
var a_p2_p3 = point_direction(_p2_[? X], _p2_[? Y], _p3_[? X], _p3_[? Y]);    
   
var d_p0_p1 = point_distance(_p0_[? X], _p0_[? Y], _p1_[? X], _p1_[? Y]);
var d_p1_p2 = point_distance(_p1_[? X], _p1_[? Y], _p2_[? X], _p2_[? Y]);
var d_p2_p3 = point_distance(_p2_[? X], _p2_[? Y], _p3_[? X], _p3_[? Y]);
        
    
for (var j = 0; j < 1.1; j += 0.05)
{ var m0 = ds_map_create();
  m0[? X] = _p0_[? X] + lengthdir_x(d_p0_p1 * j, a_p0_p1);
  m0[? Y] = _p0_[? Y] + lengthdir_y(d_p0_p1 * j, a_p0_p1);
  
  var m1 = ds_map_create();
  m1[? X] = _p1_[? X] + lengthdir_x(d_p1_p2 * j, a_p1_p2);
  m1[? Y] = _p1_[? Y] + lengthdir_y(d_p1_p2 * j, a_p1_p2); 
  
  var m_1 = ds_map_create();
  var _a_ = point_direction(m0[? X], m0[? Y], m1[? X], m1[? Y]);
  var _d_ = point_distance(m0[? X], m0[? Y], m1[? X], m1[? Y]);       
  var _dd_ = _d_ * j;
  
  m_1[? X] = m0[? X] + lengthdir_x(_dd_, _a_);
  m_1[? Y] = m0[? Y] + lengthdir_y(_dd_, _a_);
  
  var m2 = ds_map_create();
  m2[? X] = _p2_[? X] + lengthdir_x(d_p2_p3 * j, a_p2_p3);
  m2[? Y] = _p2_[? Y] + lengthdir_y(d_p2_p3 * j, a_p2_p3); 
  
  var m_2 = ds_map_create();
  _a_ = point_direction(m1[? X], m1[? Y], m2[? X], m2[? Y]);
  _d_ = point_distance(m1[? X], m1[? Y], m2[? X], m2[? Y]);
  _dd_ = _d_ * j;
  
  m_2[? X] = m1[? X] + lengthdir_x(_dd_, _a_);
  m_2[? Y] = m1[? Y] + lengthdir_y(_dd_, _a_);
  
  _a_ = point_direction(m_1[? X], m_1[? Y], m_2[? X], m_2[? Y]);
  _d_ = point_distance(m_1[? X], m_1[? Y], m_2[? X], m_2[? Y]);
  var m = ds_map_create();
  _dd_ = _d_ * j;
  
  m[? X] = m_1[? X] + lengthdir_x(_dd_, _a_);
  m[? Y] = m_1[? Y] + lengthdir_y(_dd_, _a_);
   
  path_add_point(p, m[? X], m[? Y], 100);
  ds_list_add(l_temp, m0, m1, m2, m, m_2, m_1);
}
path_add_point(p, _p3_[? X], _p3_[? Y], 100);

for (var q = 0; q < ds_list_size(l_temp); q++)
{ v = l_temp[| q];
  if is_undefined(v) continue;      
  
  if ds_exists(v, ds_type_map)
     ds_map_destroy(v);    
}
