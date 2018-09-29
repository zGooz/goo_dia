/// textbox_copy()
// retutn: string

var c = "";
var v = string(doc[|row]);
var v1 = string(doc[|side_row]);   

if side_row == row                                    
{ if collumn == side_collumn return c          
  return textbox_copy_row(v);     
}    
                        
var a = collumn + 1;  
var b = string_copy(v, a, string_length(v) - a - 1); 
a = string_copy(v1, 1, side_collumn);
c = textbox_copy_rows(side_row, row); 
return b + KEY + c + a;
