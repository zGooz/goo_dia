/// string_split(str, sym)
// return: array

var s = argument0;
var c = argument1; 
  
var l = string_length(s);
if string_char_at(s, l) == c s = string_delete(s, l, 1);       
if string_char_at(s, 1) == c s = string_delete(s, 1, 1);    
l = string_length(s); // --- not error!

var i = 0;
var a = array_create(0); 

do 
{ var p = string_pos(c, s);
  a[i++] = string_copy(s, 1, --p);
  s = string_delete(s, 1, ++p);  
  l = string_length(s);      
} 
until (!p); 

a[--i] = s;      
return a;
