% for regula falsi method
a=1;b=fl;ref=0;
c=a-((b-a)/((b*log10(b)-1.2)-(a*log10(a)-1.2))*(a*log10(a)-1.2));
while true
    
    fc=c*log10(c)-1.2;y=c;
    if fc*(a*log10(a)-1.2)<0
        b=c;
    end
    if fc*(b*log10(b)-1.2)<0
        a=c;
    end
    c=a-((b-a)/((b*log10(b)-1.2)-(a*log10(a)-1.2))*(a*log10(a)-1.2));
    if(abs(y-c)<0.001)
        break;
    end
    c=(a+b)/2;
    ref=ref+1;
end
fprintf('Value by Regula falsi method is:\n');
c
fprintf('Number of iteration used in Regula falsi is:\n');
ref