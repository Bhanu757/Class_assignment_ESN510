x = [ 1 2 3 4 5];
y = [10 22 5 35 27];
plot(x, y,'o', 'MarkerSize', 10, 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k')
hold on


for N = 1:5
    G(N,:)= [ 1, x(N), x(N)^2, x(N)^3, x(N)^4];
end
y = y';
m = inv(G)*y

xi = linspace(x(1), x(5), 100); % Increase the number of points for a smoother curve

for i = 1:100
    G_interp(i, :) = [1, xi(i), xi(i)^2, xi(i)^3, xi(i)^4];
end


yi = G_interp*m;

plot(xi, yi); % Plot the fitted curve
xlable('x');
ylable('y');
title('4th degree ploynomial fit');
legend('data points', 'fitted curve');
grid on;
