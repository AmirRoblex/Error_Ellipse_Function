function lol = myploto(p, Cx, level, dof)

a2 = ((Cx(1,1) + Cx(2,2)) / 2) + (sqrt(((Cx(1,1) - Cx(2,2)) / 2)^2 + (Cx(1,2))^2));
a = sqrt(a2);

b2 = ((Cx(1,1) + Cx(2,2)) / 2) - (sqrt(((Cx(1,1) - Cx(2,2)) / 2)^2 + (Cx(1,2)^2)));
b = sqrt(b2);

k = sqrt(chi2inv(level, dof)); %like 0.95

a_s = k * a*1000; %Scale is 5000
b_s = k * b*1000;

m = 1000;
x = zeros(m,1);
y = zeros(m,1);
beta = linspace(0,2*pi,m);
for j = 1:m
        x(j) = a_s * cos(beta(j));
        y(j) = b_s * sin(beta(j));
end

theta = rad2deg(atan((2 * Cx(1,2)) / (Cx(1,1) - Cx(2,2))));
if (2 * Cx(1,2)) > 0 && (Cx(1,1) - Cx(2,2)) > 0
    theta = theta / 2;
elseif (2 * Cx(1,2)) > 0 && (Cx(1,1) - Cx(2,2)) < 0
    theta = (theta + 180) / 2;
elseif (2 * Cx(1,2)) < 0 && (Cx(1,1) - Cx(2,2)) < 0
    theta = (theta - 180) / 2;
else 
    theta = (theta + 360) / 2;
end

R  = [cosd(theta) -sind(theta); ...
      sind(theta)  cosd(theta)];
rCoords = R*[x' ; y'];   
xr = rCoords(1,:)';      
yr = rCoords(2,:)'; 
plot(xr+p(1,1) ,yr+p(2,1));
grid on;
axis equal;


lol = 1;
end