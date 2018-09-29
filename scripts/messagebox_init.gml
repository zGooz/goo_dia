/// messagebox_init(class, message, count)
// return: id

var c  = argument0;
var m  = argument1;
var bc = argument2;

with instance_create(0, 0, obj_message_box)
{ class = c;
  Message = m;
  btnCnt = bc;
  Button_height = SYM_H << 1;  
  Buttons = array_create(4);
  Buttons[0] = " ОК "; 
  Buttons[1] = " Отмена ";
  Buttons[2] = " Применить ";
  Buttons[3] = " Закрыть ";         
  btn = ds_list_create();             
  Button_width = width - (SYM_W << 1);
  var _b = btnCnt + 1;
  
  var w_ = min(window_get_width(), DISPLAY_WIDTH);
  var h_ = min(window_get_height(), DISPLAY_HEIGHT);
  location[X] = (w_ >> 1) - (width >> 1);
  location[Y] = (h_ >> 1) - (height >> 1); 
  xt = location[X] + SYM_W;
  yt = location[Y] + SYM_H;
  var _yh_ = location[Y] + height;
  var yy = _yh_ - (Button_height + SYM_H);
  var h = 4;         
  var _h = Button_height + h;
  
  switch class
  { case msg_box.MSG_HOR :
          Button_width = width / _b;                
          var w = (width - Button_width * btnCnt) / _b;
          var xx = location[X] + w;                
          
          for (var i = 0; i < btnCnt; i++;)
          { btn[| i] = button_init(button.BTN_PLAIN, xx + (w + Button_width) * i, yy, 
                                   Button_width, Button_height, Buttons[i], -1);
            button_set_foreg(btn[| i], spr_bird, i); 
          } break;
               
    case msg_box.MSG_VER :
          var xx = location[X] + SYM_W; 
          yy = _yh_ - _h * btnCnt - SYM_W;
                            
          for (var i = 0; i < btnCnt; i++;)
          { btn[| i] = button_init(button.BTN_PLAIN, xx, yy + _h * i, 
                                   Button_width, Button_height, Buttons[i], -1); 
            button_set_foreg(btn[| i], spr_bird, i);
          } break;  
  }   
  return id;
}
