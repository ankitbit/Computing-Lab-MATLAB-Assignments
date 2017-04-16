
%Calculating the roots of a function using the functional values in the
%bisection method
eps_abs = 1e-5;
eps_step = 1e-5;

a=input('Enter the value of a: ');
b=input('Enter the value of b: ');

for i=1:10    
    c = (a + b)/2;
    if  func(c)==0
        
        break;
       
    elseif func(a)*func(c) < 0 
       b = c;
    else
       a = c;
    end
end


disp('Real root of the equation is ');
disp(c);
actual_root = roots([1 0 -1 -11]);
disp('Actual root of the equation is ');
disp(actual_root);
rel_error=abs(actual_root(1)-c)/abs(actual_root(1))


