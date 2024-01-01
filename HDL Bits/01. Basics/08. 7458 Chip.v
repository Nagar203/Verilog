module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    /*method 01 
    assign p1y = (p1e&p1f&p1d) | (p1c&p1b&p1a);
    assign p2y = (p2c&p2d) | (p2b&p2a);
    */
    
    /*method 02 */
    wire w1, w2, w3, w4;
    assign w1 = p1e&p1f&p1d;
    assign w2 = p1c&p1b&p1a;
    assign w3 = p2c&p2d;
    assign w4 = p2b&p2a;
    
    assign p1y = w1 | w2;
    assign p2y = w3 | w4;

endmodule
