% forma diferente de gráficar el problema de lorenz (EDO) 
%
% Adapted de : https://la.mathworks.com/help/optim/ug/fit-differential-equation-ode.html
% Francisca Zura 
%
% parametros para un sistema sensible
sigma = 10;
beta = 8/3;
rho = 28;
%
f = @(t,a) [-sigma*a(1) + sigma*a(2); rho*a(1) - a(2) - a(1)*a(3); -beta*a(3) + a(1)*a(2)];
xt0 = [10,20,10];
[tspan,a] = ode45(f,[0 100],xt0);     % Runge-Kutta 4th/5th order ODE solver
figure
plot3(a(:,1),a(:,2),a(:,3))
view([-10.0 -2.0])
%
