/// string_double_split(str, sym0, sym1)
// return: array

var s  = argument0;
var c0 = argument1;
var c1 = argument2;  

var a = array_create(0); 
var g = string_split(s, KEY1);  

for (var i = 0; i < array_length_1d(g); i++)
{ var t = string_split(g[i], KEY);  
  for (var j = 0; j < array_length_1d(t); j++)
      a[i, j] = t[j]; 
}     
return a;
