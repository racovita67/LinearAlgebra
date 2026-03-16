A = [1 2;3 4];
x = [5;-2];
b = [1 7]';

if(all(A*x==b,1))
    disp('Ax=b')
end