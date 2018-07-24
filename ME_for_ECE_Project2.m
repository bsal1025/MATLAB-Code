% Title: ME_for_ECE_Project2
% Author: Brandon Salamone
% Date: 12/11/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Global Variables Used in both Analytical and Numerical Parts
T1 = 25; % Ambient Temperature in Celcius
T2 = 50; % Temperature of Heat Source in Celcius
W = 4;   % Width of Rectangular Structure
L = 8;   % Length of Rectangular Structure
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analytical Section
% for loop to step through different values of y
for j = 1:4  
    % for loop to step through different values of x
    for k = 1:8;
 s(j,k) = theta(4,8,k,j,10);             % Returns matrix of theta values from heat equation
 Temp = s.*(T2-T1)+T1;                   % Converts matrix of theta values to matrix of temperature values
    end
end

% Generates Contour Map of Analytical Solution Based on Values in Temp
contour(Temp);
title('2D Heat Equation Temperatures T2 = 50, T1 = 25');
xlabel('X Value');
ylabel('Y Value');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Numerical Section
mesh = 1; % Local Variable to Determine Mesh Size. Use 1 for smaller mesh size of 1 and 2 for larger mesh of 2
if(mesh ==1)
    T = sym('T',[1 (W-1)*(L-1)]);                          % Create a Vector of Symbolic Temperature Variables
    eqn = sym('eqn',[1 (W-1)*(L-1)]);                      % Create a Vector to Store Each Equation
    
% For Loop to Generate Equations: Each one stored to eqn()
    for i=1:(W-1)*(L-1)
    if(i == 1)                                             % If Using the Smaller Mesh Size of 1
        eqn(i) = T(i+7)+T(i+1)-(4*T(i))== -1*(T1+T2);
    elseif(i == 7)
        eqn(i) = T(i+7)+T(i-1)-(4*T(i))== -1*(T1+T2);
    elseif(i == 8)
        eqn(i) = T(i+1)+T(i-7)+T(i+7)-(4*T(i))== -1*T1;
    elseif(i == 14)
      eqn(i) = T(i+7)+T(i-1)+T(i-7)-(4*T(i))== -1*T1;
    elseif(i == 15)
        eqn(i) = T(i+1)+T(i-7)-(4*T(i)) == -2*T1;
    elseif(i == 21)
        eqn(i) = T(i-1)+T(i-7)-(4*T(i)) == -2*T1;
    elseif(i <= 6 && i > 1)
    eqn(i)= T(i-1)+ T(i+1)+T(i+7)-(4*T(i))== -1*T2; 
    elseif(i >6 && i <= 13)
        eqn(i)= T(i-7)+T(i-1)+ T(i+1)+T(i+7)-(4*T(i))== 0; 
    elseif (i>15 && i<=20)
        eqn(i)= T(i-1)+ T(i+1)+T(i-7)-(4*T(i))== -1*T1;
    end
       
    end
    [A,B] = equationsToMatrix([eqn(1:21)],[T(1:21)]); % Convert Equations in eqn() to a Matrix A and Variables in 
                                                      % T() to a column vector B
                                                     
    X = linsolve(A,B);                                % Solve System of Equations in eqn() for Variables in T()
    
else                                                  % If using the larger mesh size of 2
    T = sym('T',[1 (W-3)*(L-5)]);                     % Create a Smaller T Vector with Less Variables
    eqn = sym('eqn',[1 (W-3)*(L-5)]);                 % Create a Smaller eqn Vector with Less Equations
    
% Similar for loop to Generate Equations
    for i=1:(W-3)*(L-5)
    if(i == 1)
    eqn(i) = -4*T(i) == -100;
    elseif(i == 2)
        eqn(i)= T(i-1)+T(i+1)-(4*T(i)) == -75;
    elseif(i == 3)
        eqn(i)= T(i-1)-(4*T(i)) == -100;
    end
    end

[A,B] = equationsToMatrix([eqn(1:3)],[T(1:3)]);     % Convert Equations to Matrix A and Variables to Matrix B
X = linsolve(A,B);                                  % Solve system of equations in eqn() for variables in T()
end
display(eqn);                                       % Display System of Equations Solved in Command Prompt
display(double(X));                                 % Display Temperatures in Command Prompt

