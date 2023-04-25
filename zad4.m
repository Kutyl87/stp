format long;
 A = [-Gz.Denominator{1}(2) -Gz.Denominator{1}(3) -Gz.Denominator{1}(4); 1 0 0; 0 1 0];
 C = [Gz.Numerator{1}(2) Gz.Numerator{1}(3) Gz.Numerator{1}(4)];
 B = [1;0;0];
 z = sym('z');
 bieguny = [0.03,0.03,0.03];
 K = [sym('k1') sym('k2') sym('k3')];
 M = z * eye(3) - (A-B*K);
 Mdet = det(M);
 s_eq = collect(Mdet,z);
 c = fliplr(coeffs(s_eq, z));
 wsp = poly(bieguny);
  k3 = sym('k3');
  k2 = sym('k2');
  k1 = sym('k1');
 eqn = c(2) == wsp(2);
 k1solv = solve(eqn,k1);
 eqn = c(3) == wsp(3);
 k2solv = solve(eqn,k2);
 eqn = c(4) == wsp(4);
 k3solv = solve(eqn,k3);
 Kpor = acker(A,B,bieguny)
 K = [double(k1solv) double(k2solv) double(k3solv)]

