module testbench;
reg A,B;
wire Y;
  
  and_gate uut(
    .A(A),
    .B(B),
    .Y(Y)
  );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    $monitor("AB|Y");
    $monitor("%b%b|%b",A,B,Y);
             A=0;B=0;
             #10;
             
             A=0;B=1;
             #10;
    
             A=1;B=0;
             #10;
             
             A=1;B=1;
             #10;
    
      $finish;
             end
             endmodule       
         
             
             
             
