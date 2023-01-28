// インバータを奇数個繋げてクロック回路になるかと思ったらそんなことはなかった
// oはxになる
module oscillator (o);
    output o;
    wire a,b;
    assign b = !a;
    assign o = !b | 0; // | 0 をなくすとoがzになる
    assign a = !b;
endmodule
