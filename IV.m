n=input('Input a from the user: ');
r=input('Input a from the user: ');
var1=r^0;
sum=0;
if(abs(r)<1)
    disp('The given series can converge')
end
if(abs(r)>=1)
    disp('The given series can not converge')
end
for i=1:n
        var1=r^i;
        sum=sum+var1 
end  
sum