/// textbox_undo_redo()
//  return: n/a

switch state
{ case text_box.TB_EDIT : 
  case text_box.TB_REDO :
        state = text_box.TB_UNDO;           
        ds_list_copy(doc, old);          
        collumn = old_collumn;
        row = old_row;     
        break;       
    
  case text_box.TB_UNDO :
        state = text_box.TB_REDO;          
        ds_list_copy(doc, new);           
        collumn = new_collumn;
        row = new_row;
        side_collumn = collumn; 
        side_row = row;    
        break;    
}    
