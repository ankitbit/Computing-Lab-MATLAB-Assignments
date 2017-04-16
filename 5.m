for i=0.0000:1:3.0000
    if(f(i)*f(i+1)<0)
        a=i;
        b=i+1;
        break;
    end
end