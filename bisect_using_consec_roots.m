
%Calculating the roots of a function using the consecutive roots values in the
%bisection method
eps_abs = 1e-4;
eps_step = 1e-4;

a=input('Enter the value of a: ');
b=input('Enter the value of b: ');
prev_root=0.00;
while ( b - a >= eps_step || ( abs( func2(a) ) >= eps_abs && abs( func2(b) )  >= eps_abs ) )
    c = (a + b)/2;
    if  abs(prev_root-c)<0.00001
        break;
    elseif func2(a)*func2(c) < 0 
       b = c;
       prev_root=c;
    else
       a = c;
       prev_root=c;
    end
end
disp('Real root of the equation is ');
disp(c);
actual_root = roots([1 0 -3 4]);
disp('Actual root of the equation is ');
disp(actual_root);
rel_error=abs(actual_root(1)-c)/abs(actual_root(1))

