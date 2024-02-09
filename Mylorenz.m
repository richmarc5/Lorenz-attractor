clear all
close all

tspan=[0:0.1: 55];
y0=[-11 10 11]

a=-35;
b=35;
y0=(b-a)*rand(1,3)+a;


for ii=1:length(tspan)-1
    timesol=[tspan(ii) tspan(ii+1)];
[t,y] = ode45(@Lorz,timesol,y0);
y0=[y(end,1) y(end,2) y(end,3)];
figure(1)
plot3(y(:,1),y(:,2),y(:,3),'b')
xlabel('X AXIS ')
ylabel('y AXIS ')
zlabel('z AXIS ')
% plot(y(:,2),y(:,3),'b')
pause(0.1)
hold on
end