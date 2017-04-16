for i=1:0.5:3.0000
    if(i~=0 && f(i)*f(i+1)<0)
        a=i;
        b=i+1;
        break;
    end
end
eps_abs = 1e-3;
eps_step = 1e-3;
while (  b - a >= eps_step || ( abs( f(a) ) >= eps_abs && abs( f(b) )  >= eps_abs )) 
    
    c = (a + b)/2;
    if  f(c)==0
        
        break;
       
    elseif f(a)*f(c) < 0 
       b = c;
    else
       a = c;
    end
end


