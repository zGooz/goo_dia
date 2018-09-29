/// dia_edit_export();
// return: n/a

var t = ds_list_create();  
  with obj_dialog
  { if !exist 
       ds_list_add(t, id);
  }
  
if ds_list_empty(t)
   global.Msg = messagebox_init(msg_box.MSG_HOR, " Invalid dialog architecture.", 1);
else
{ var f = get_save_filename("|*.edf", "export_file.edf");

  if f != ""
  { f = file_text_open_write(f);
  
    for (var i = 0; i < ds_list_size(t); i++;)
    { var v = t[| i];
      if is_undefined(v) continue;
      if !instance_exists(v) continue;
      data_export(v, f, v, 0);
    }
    
    ds_list_destroy(t);
    file_text_close(f);
  }
} 
