/// msgbox(class [HOR or VER], message, mcol, texture, bcol, buttex, butcol, clx, cly)
// return: real

var c  = argument0;
var m  = argument1;
var mc = argument2;
var t  = argument3;
var bc = argument4;
var tx = argument5;
var cb = argument6;
var cx = argument7;
var cy = argument8;

var bh = SYM_H << 1;  
Buttons = array_create(2);
Buttons[0] = " ОК "; 
Buttons[1] = " Отмена ";            
var bw = DEFAULT_MESSAGE_WIDTH - (SYM_W << 1);
var _b = 3;          

var w_ = min(window_get_width(), DISPLAY_WIDTH);
var h_ = min(window_get_height(), DISPLAY_HEIGHT);
p_x = (w_ >> 1) - (DEFAULT_MESSAGE_WIDTH >> 1);
p_y = (h_ >> 1) - (DEFAULT_MESSAGE_HEIGHT >> 1); 
var xt = p_x + SYM_W;
var yt = p_y + SYM_H;
var _yh_ = p_y + DEFAULT_MESSAGE_HEIGHT;
var yy = _yh_ - (bh + SYM_H);
var h = 4;         
var _h = bh + h;
draw_set_colour(bc);
auto_draw_rectangle(p_x, p_y, t, DEFAULT_MESSAGE_WIDTH, DEFAULT_MESSAGE_HEIGHT); 
draw_set_colour(mc);
draw_text(xt, yt, m);

switch c
{ case msg_box.MSG_HOR :
        bw = DEFAULT_MESSAGE_WIDTH / _b;                
        var w = (DEFAULT_MESSAGE_WIDTH - bw * 2) / _b;
        var xx = p_x + w;                
        
        for (var i = 0; i < 2; i++;)
        { if btn_click(xx + (w + bw) * i, yy, bw, bh, cb, tx, Buttons[i], mc, cx, cy)
             return !i; 
        } break;
             
  case msg_box.MSG_VER :
        var xx = p_x + SYM_W; 
        yy = _yh_ - (_h << 1) - SYM_W;
                          
        for (var i = 0; i < 2; i++;)
        { if btn_click(xx, yy + _h * i, bw, bh, cb, tx, Buttons[i], mc, cx, cy)
             return !i;
        } break;  
}   
