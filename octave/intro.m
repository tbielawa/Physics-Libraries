# Stuff for Physics 112
global k enot

# Define our charge (Coulomb) constant
k = ee(8.99,9);
# k also = ee(4*pi*enot,-1)

# Permitivity of free space
enot = ee(8.85, -12);

# Electron: mass in kg, charge in coulombs
mass_e = ee(9.11, -31);
charge_e = ee(-1.60, -19);

# Proton: mass in kg, charge in coulombs
mass_p = ee(1.67, -27);
charge_p = -charge_e;

# Calculate the force between two charges distance r apart.
function force = chargeforce(q1, q2, r)
  global k;
  num = q1 * q2;
  denom = power(r, 2);
  quotient = num / denom;
  force = k * quotient;
endfunction

# Calculate the strength of a field
function force = fieldstrength(q, r)
  global k;
  magnitude = magnitude(r);
  hcomp = r(1)/magnitude;
  vcomp = r(2)/magnitude;
  force = (k*q/power(magnitude,2)).*[hcomp vcomp];
endfunction

% Get the magnitude a vector given the component pieces
function mag = magnitude(components)
   mag = sqrt(sum(components.^2));
endfunction
