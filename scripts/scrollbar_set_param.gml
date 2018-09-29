/// scrollbar_set_param(scroll, top, size, limit)
// return: n/a

var b = argument[0];
var t = argument[1];
var s = argument[2];
                                                
scrollbar_set_top(b, t);  
scrollbar_set_size(b, s);

if argument_count > 3
{ var l = argument[3];
  scrollbar_set_view(b, l);
}       
scrollbar_set_shift(b);      
