 A = [-sym('a2') -sym('a1') -sym('a0'); 1 0 0; 0 1 0];
 C = [sym('c2') sym('c1') sym('c0')];
 %  A = [-Gz.Denominator{1}(2) -Gz.Denominator{1}(3) -Gz.Denominator{1}(4); 1 0 0; 0 1 0];
 % C = [Gz.Numerator{1}(2) Gz.Numerator{1}(3) Gz.Numerator{1}(4)];
   l1 = sym('l1');
 l2 = sym('l2');
 l3 = sym('l3');
  L = [l1; l2;l3];
 z = sym('z');
 M = z * eye(3) - (A-L*C)
 zo = sym('zo')
pos_zad =[sym('zo'),sym('zo'),sym('zo')]
expr = z^3 - 3*zo*z^2 + 3*zo^2*z - zo^3
expr_z = collect(expr,z)
wsp=  fliplr(coeffs(expr_z, z))
% c = fliplr(coeffs(collect([ z^3 - 3*zo*z^2 + 3*zo^2*z - zo^3],z)))
  Mdet = det(M);
 s_eq = collect(Mdet,z);
 c = fliplr(coeffs(s_eq, z))
 % wsp = poly(poz_zad);
 eqn_l_1 = c(2) == wsp(2);
  % l1solv = solve(eqn,k1);
  eqn_l_2 = c(3) == wsp(3);
 % l2solv = solve(eqn,k2);
  eqn_l_3 = c(4) == wsp(4);
  % k3solv = solve(eqn,k3);
  lx = solve(eqn_l_1,eqn_l_2,eqn_l_3, l1,l2,l3);
  % Kpor = acker(A,B,poz_zad)
  L = [lx.l1; lx.l2; lx.l3]
  Lpor = acker(A',C',[0.146,0.146,0.146])'