function dydt = Lorz(t,y)

sigma=10;
rho=28;
beta=8/3;

dydt = [y(2); (1-y(1)^2)*y(2)-y(1)];

 dydt = zeros(3,1);
  dydt(1) = sigma*(y(2)-y(1));
  dydt(2) = (y(1))*(rho-y(3))-y(2);
  dydt(3) = y(1)*y(2)-beta*y(3);