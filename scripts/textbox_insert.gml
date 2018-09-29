/// textbox_insert(first, last)
//  return: n/a

var b = argument0;
var a = argument1;

if !clipboard_has_text() exit; 
var g = clipboard_get_text();  
                 
if side_collumn == collumn && side_row == row
{ textbox_paste(g);   
  exit;
}

doc[| row] = b + a;
textbox_remove_rows(side_row - row);
textbox_paste(g);
