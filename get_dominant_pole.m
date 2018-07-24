function [sigma,omega] = get_dominant_pole(zeta,pole1,pole2,pole3)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Z = tan(acos(zeta));
syms real_part 
sigma = solve(atand((Z)/(real_part+pole1))+atand((Z)/(real_part+pole2))+atand((Z)/(real_part+pole3))+180 == 0,real_part);
%sigma = solve(real_part+pole1+pole2+pole3 == 0,real_part);
omega = Z*sigma;
end

