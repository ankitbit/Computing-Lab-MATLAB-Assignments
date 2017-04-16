clear all
%Calculating the roots of a function using the functional values in the
%bisection method
eps_abs = 1e-4;
eps_step = 1e-4;

a=input('Enter the value of a: ');
b=input('Enter the value of b: ');
i=0;
for i=1:10    
    i=i+1;
    c = (a + b)/2;
    if  func(c)==0
        
        break;
       
    elseif func(a)*func(c) < 0 
       b = c;
    else
       a = c;
    end
end

bisection_root=c;
disp('Real root of the equation is ');
disp(c);
actual_root = roots([1 0 -1 -11]);
disp('Actual root of the equation is ');
disp(actual_root);
rel_error1=abs(actual_root(1)-c)/abs(actual_root(1))




