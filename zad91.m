 A_var_2 = [-Gz.Denominator{1}(2) -Gz.Denominator{1}(3) -Gz.Denominator{1}(4); 1 0 0; 0 1 0]';
 B_var_2 = [Gz.Numerator{1}(2) Gz.Numerator{1}(3) Gz.Numerator{1}(4)]';
 C_var2 = [1 0 0];
A_11 = A_var_2(1,1);
A_12 = A_var_2(1,2:end);
A_21 = A_var_2(2:end,1);
A_22 = A_var_2(2:end,2:end);
B_1 = B_var_2(1,1);
B_2 = B_var_2(2:end,1);
b_obsv_np_rz = 0.55;
L_np_rz = acker(A_22', A_12', [b_obsv_np_rz, b_obsv_np_rz])';
L_np_rz;
w_multiply = (A_22 - L_np_rz*A_12);
y_multiply = A_21 - L_np_rz*A_11;
u_multiply = B_2 - L_np_rz*B_1;