/// scrollbar_free(id)
// return: noone

with argument0
{ if object_index != obj_scroll_bar
     show_error("incorrect object_index", 1);     
     
  instance_destroy();
  return noone;
}     
