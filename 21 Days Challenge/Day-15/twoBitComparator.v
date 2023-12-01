module twoBitComparator(INPUT1, INPUT2, EQUAL, GREATER, LESS);
  input [1:0] INPUT1, INPUT2;
  output reg EQUAL, GREATER, LESS;
  
  always @(*)
  begin
    EQUAL = ({INPUT1[1],INPUT1[0]} ==  {INPUT2[1],INPUT2[0]});
    GREATER = ({INPUT1[1],INPUT1[0]} >  {INPUT2[1],INPUT2[0]});
    LESS = ({INPUT1[1],INPUT1[0]} <  {INPUT2[1],INPUT2[0]});
  end
endmodule
    