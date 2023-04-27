format long;
 A_var_2 = [-Gz.Denominator{1}(2) -Gz.Denominator{1}(3) -Gz.Denominator{1}(4); 1 0 0; 0 1 0]'
 B_var_2 = [Gz.Numerator{1}(2) Gz.Numerator{1}(3) Gz.Numerator{1}(4)];
 C = [1;0;0]';
 Kvar_2 = acker(A,B,bieguny)
