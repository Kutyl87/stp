AT = A'
Bv2 = C';
Cv2 = [1 0 0];
A_11 = AT(1,1)
A_12 = AT(1,2:end);
A_21 = AT(2:end,1);
A_22 = AT(2:end,2:end);
B_1 = Bv2(1,1);
B_2 = Bv2(2:end,1);
b_obsv_np_rz = 0.1;
L_np_rz = acker(A_22', A_12', [b_obsv_np_rz, b_obsv_np_rz])';
L_np_rz
w_multiply = (A_22 - L_np_rz*A_12);
y_multiply = A_21 - L_np_rz*A_11;
u_multiply = B_2 - L_np_rz*B_1