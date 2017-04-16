for i=1:0.5:3.0000
    if(i~=0 && f(i)*f(i+1)<0)
        a=i;
        b=i+1;
        break;
    end
end
eps_abs = 1e-3;
prev_root=0.00;
while ( true )
    c=b-((b-a)/(f(b)-f(a)));
    if  abs(prev_root-c)<0.0001
        break;
    end
       
    if f(a)*f(c) < 0 
       b = c;
       prev_root=c;
    elseif f(b)*f(c) < 0
       a = c;
       prev_root=c;
    end
    
end



