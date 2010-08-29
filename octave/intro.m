# Stuff for Physics 112
global k enot

# Define our charge (Coulomb) constant
k = ee(8.99,9);
# k also = ee(4*pi*enot,-1)

# Permitivity of free space
enot = ee(8.85, -12);

% Calculate the force between two charges distance r apart.
function force = chargeforce(q1, q2, r)
  global k;
  num = q1 * q2;
  denom = power(r, 2);
  quotient = num / denom;
  force = k * quotient;
endfunction

% Get the hypotenuse of a right triangle given the two legs
function c = abc(a, b)
  c = sqrt(power(a, 2) + power(b, 2));
endfunction
