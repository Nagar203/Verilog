module twoBitComparator(tbc_eq, tbc_lt, tbc_gt, A, B);
  input[1:0] A, B;
  output tbc_lt, tbc_gt, tbc_eq;
  wire lt1, gt1, eq1,lt2, gt2, eq2,t1,t2,t3;
  
  oneBitComparator c1(lt1, gt1, eq1, A[0], B[0]);
  oneBitComparator c2(lt2, gt2, eq2, A[1], B[1]);
  
  and andmain1(tbc_eq,eq1,eq2);
  
  and andmain3(t2,eq2,gt1);
  or ormain2(tbc_gt,t2,gt2);
  
  and andmain2(t1,eq2,lt1);
  or ormain1(tbc_lt,t1,lt2);
endmodule

module oneBitComparator(lt, gt, eq, A, B);
  input A, B;
  output lt, gt, eq;
  lt l1(lt, A, B);
  gt g1(gt, A, B);
  eq e1(eq, A, B);
endmodule

module lt(lt_out, lt_a, lt_b);
  input lt_a, lt_b;
  output lt_out;
  wire temp;
  not n1(temp,lt_b);
  and a1(lt_out, lt_a, temp);
endmodule

module gt(gt_out, gt_a, gt_b);
  input gt_a, gt_b;
  output gt_out;
   wire temp;
  not n2(temp,gt_a);
  and a2(gt_out, temp, gt_b);
endmodule

module eq(eq_out, eq_a, eq_b);
  input eq_a, eq_b;
  output eq_out;
  xnor x1 (eq_out, eq_a, eq_b);
endmodule