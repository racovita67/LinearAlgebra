% Unit vector u
v = randn(3,1);
u = v/norm(v);

% Optional - Unit Vector Check
u_len = sqrt( u(1)^2 + u(2)^2 + u(3)^2 );  % Must equal 1


% 30 column unit vectors in U
V = randn(3,30);
U = zeros(3,30);

for i = 1 : 30
   U(1:3,i) = V(1:3,i)/norm(V(1:3,i));
end

% Compute the average
avg = 0;
for i = 1 : 30
    avg = avg + abs(dot(u, U(1:3,i)));
end
avg = avg/30;

% Comment: Here the book is not correct. The average is 1/2, not 2/pi.




