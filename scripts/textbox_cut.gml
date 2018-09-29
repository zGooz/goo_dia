/// textbox_cut(first, last)
// return: n/a

var b = argument0;
var a = argument1;

var c = textbox_copy();
if c != "" clipboard_set_text(c);  
doc[| row] = b + a;
textbox_remove_rows(side_row - row);
