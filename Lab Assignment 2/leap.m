year=input('Enter the year');
leap=1;

if (mod(year, 400)==0)
        leap=1;
else
    if (mod(year, 400)~=0)
        if(mod(year, 100)==0)
            leap=0;
        else
            if(mod(year, 4)==0)
                leap=1;
            end
        end
    end
end

if(leap==0)
    disp('Not a leap')
else
    disp('Leap Year')
end