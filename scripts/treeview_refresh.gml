/// treeview_refresh()
// return: n/a

ds_list_clear(list_side);
ds_list_clear(item_side);    
var i = top;  
var m = min(size, top + lim_ver);

for (var q = top; q < m; q++)
{ var v = list_tree[| q];
  if is_undefined(v) continue;
   
  var s = v[? tree_view.TREE_STATE]; 
  var l = v[? tree_view.TREE_LEVEL];   
  var t = v[? tree_view.TREE_TYPE];
  
  list_side[| i] = list_tree[| q];
  item_side[| i++] = item_spr[| q];  
  
  if t == tree_type.TT_CARRIER
  { if !v[? tree_view.TREE_STATE]
    { for (var j = q + 1; j < size; j++)
      { var tv = list_tree[| j]; 
        if is_undefined(tv) continue;
        var lvl = tv[? tree_view.TREE_LEVEL];
        if lvl < l + 1 break;         
        q++;       
      }      
    }
  }                
}                                                               
