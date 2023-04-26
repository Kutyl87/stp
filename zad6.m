% rank(C)
% rank(poz_zad)
% rank(C')
% rank(A)
% L = acker(A',C', poz_zad)'
% A = [-1,-0.75;1,0];
% B = [1;0];
% C = [1,1];
% D = 0;
b_obsv = 0.01;
Lpor = acker(A',C',[b_obsv,b_obsv,b_obsv])'
% At = A-L*C;
% Bt = [B,L];
% Ct = [C;eye(2)];
% sysObserver = ss(At,Bt,Ct,0)
 % poz_zad = [ 1 -1 -3];
 % A = [-Gz.Denominator{1}(2) -Gz.Denominator{1}(3) -Gz.Denominator{1}(4); 1 0 0; 0 1 0];
 % C = [Gz.Numerator{1}(2) Gz.Numerator{1}(3) Gz.Numerator{1}(4)];
 % B = [1;0;0];
 % s = sym('s');
 poz_zad = [b_obsv,b_obsv,b_obsv];
  l1 = sym('l1');
 l2 = sym('l2');
 l3 = sym('l3');
 L = [l1; l2;l3];
 z = sym('z');
 L*C;
 M = z * eye(3) - (A-L*C);
 Mdet = det(M);
 s_eq = collect(Mdet,z);
 c = fliplr(coeffs(s_eq, z));
 wsp = poly(poz_zad);
 eqn_l_1 = c(2) == wsp(2);
 % l1solv = solve(eqn,k1);
  eqn_l_2 = c(3) == wsp(3);
 % l2solv = solve(eqn,k2);
  eqn_l_3 = c(4) == wsp(4);
  % k3solv = solve(eqn,k3);
  lx = solve(eqn_l_1,eqn_l_2,eqn_l_3, l1,l2,l3);
  % Kpor = acker(A,B,poz_zad)
  L = [double(lx.l1); double(lx.l2); double(lx.l3)]
 C;