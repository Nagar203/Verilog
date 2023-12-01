module whileLoop();
  integer count=0;
  
  initial
  begin
    while(count <= 10)
        begin
          $monitor($time," Counter=%b",count);
          count = count + 1;    
        end
  end

endmodule