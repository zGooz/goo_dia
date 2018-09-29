/// textbox_carrier_buffer(mode)
// return:n/a

switch argument0
{ case tb_buffer.BUF_OLD :
        ds_list_copy(old, doc);          
        old_collumn = collumn;
        old_row = row;          
        break;
  
  case tb_buffer.BUF_NEW :
        ds_list_copy(new, doc);          
        new_collumn = collumn;
        new_row = row;            
        break;
}
