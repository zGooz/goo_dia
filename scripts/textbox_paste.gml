/// textbox_paste(clip)
// retutn: n/a

var c = argument0;

var v = string(doc[|row]);      
var lg = string_length(v);
var cnt = string_count(KEY,c);
var b = string_copy(v, 1, collumn);  
var a = string_copy(v, collumn + 1, lg);
var p = string_pos(KEY, c) + 1;
var t = string_copy(c, 1, p);

if cnt 
   doc[|row] = b + t;                          
else
{ doc[|row] = b + c + a;    
  exit;
} 
  
var pp = p + 1;
c = string_delete(c, 1, pp);

for (var i = row + 1; i < row + cnt; i++)
{ p = string_pos(KEY, c) - 1;
  t = string_copy(c, 1, p);
  c = string_delete(c, 1, pp);         
  ds_list_insert(doc, i, t);          
}

ds_list_insert(doc, row + cnt, c + a);
row += cnt;      
v = string(doc[|row]);
var sl = string_length(a);
var vl = string_length(v);
v = string_delete(v, (vl + 1) - sl, vl);          
size = ds_list_size(doc);
collumn = vl;           
