/// textbox_swap_cursor()
// return: n/a

var u = min(row, side_row);
var d = max(row, side_row);

var l, r;
if row == side_row
{ l = min(collumn, side_collumn);
  r = max(collumn, side_collumn); 
}
else
{ if side_row < row
  { l = side_collumn; 
    r = collumn; 
  }                     
  else
  { l = collumn; 
    r = side_collumn; 
  }              
} 
       
side_collumn = r; 
side_row = d;
collumn = l;  
row = u;  
textbox_refresh_karet();            
