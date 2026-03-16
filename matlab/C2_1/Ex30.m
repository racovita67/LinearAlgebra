%% Compute u7 and v7
u = [1;0];
v = [0;1];
A = [0.8 0.3 ; 0.2 0.7];

for i = 1:7
    u = A*u;
    v = A*v;
    fprintf("It%d\n",i);disp(u);disp(v);
end

%% Plot u
u = [1 ; 0];
A = [.8 .3 ; .2 .7];
x = u; k = [0:7];

while (size(x,2)) <= 7
    u = A*u;x=[x u];
end
plot(k,x);

%% Plot v
v = [0 ; 1];
A = [.8 .3 ; .2 .7];
x = v; k = [0:7];

for j = 1:7
    v = A*v;x=[x v];
end
plot(k,x);

%% Guess S
s = [0.6 ; 0.4];  % From the other sections, i guess [0.6 ; 0.4]
A = [.8 .3 ; .2 .7];
x = s; k = [0:7];

for j = 1:7
    s = A*s;x=[x s];
end
plot(k,x);