/// textbox_copy_rows(first row, second row)
// retutn: string 

var f = argument0;
var s = argument1; 

var c = "";
for (var i = 1; i < f - s; i++) 
    c += string(doc[| s + i]) + KEY;       
return c;
