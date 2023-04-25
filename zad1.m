format long
T = 0.5;
Gs = tf([1 4 4],[1 12 47 60]);
Gz = c2d(Gs,T,'zoh')
% Gz.Numerator{1}(1)
% Gz.Denominator{1}(1
Gz.Numerator{1}(1)
Gz.Denominator{1}(1)
Gz.Numerator{1}(2)
Gz.Denominator{1}(2)
Gz.Numerator{1}(3)
Gz.Denominator{1}(3)
Gz.Numerator{1}(4)
Gz.Denominator{1}(4)
pole(Gz)
zero(Gz)