
n=input('Input a from the user: ');
m=input('Input a from the user: ');
if(n>=m)
    var1=1;
    var2=1;
    for i=drange(1:m)
        var1=var1*i;
    end
    for i=drange(1:(n-m))
        var2=var2*i;
    end
    var3=factorial(n);
    
    ans=var3/((var2)*(var1))
end
