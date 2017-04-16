%Calculating the roots of a function using the functional values in the
%bisection method
eps_abs = 1e-5;
eps_step = 1e-5;
new_root=0.00;
a=0.0;
b=0.0;
init_approx=0.0000;
fin_approx=3.0000;
for i=0.0000:1:3.0000
    if(f(i)*f(i+1)<0)
        a=i;
        b=i+1;
        break;
    end
end



while ( b - a >= eps_step || ( abs( f(a) ) >= eps_abs && abs( f(b) )  >= eps_abs ) )    
    c=b-((b-a)/(f(b)-f(a)));
    if  f(c)==0
        break;
       
    elseif f(a)*f(c) < 0 
       b = c;
    else
       a = c;
    end
end


disp('Real root of the equation is ');
disp(c);
actual_root = roots([1 0 -1 11]);
disp('Actual root of the equation is ');
disp(actual_root);
rel_error=abs(actual_root(1)-c)/abs(actual_root(1))
