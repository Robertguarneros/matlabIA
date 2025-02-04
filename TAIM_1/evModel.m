function [speed,range] = evModel(battEfficiency,auxPower)

speed = 1:125; %Vector of speed values [mph]

% Physical Constants
p = 1.225; % Air density [kg/m^3]
A = 1.97; % Vehicular Frontal Area [m^3]
Cd = 0.29; % Drag Coefficient
m = 1190; % Vehicle Mass [kg]
g = 9.8; % Acceleration Due to Gravity [m/s^2]

nbatt = 0.2; % Battery Utilization Factor
Cbatt = 100.2; % Battery Capacity [MJ]
frr = 0.0085; % Rolling Friction Coefficient

% Range Calculation
range = (1/1000)*nbatt*(1e6*Cbatt)./((1/battEfficiency)*(0.5*p*A*Cd*(speed*0.277778).^2 +...
    m*g*frr)+auxPower./(speed*0.277778));

end
