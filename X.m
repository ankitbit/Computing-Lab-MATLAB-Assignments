month=input('Enter the name of the month: ','s');
year=input('Enter the year: ');
no_days=0;
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
        
   
switch month
    case 'Jan'
        no_days=31;
    case 'Feb'
        if leap==0
            no_days=28;
        else
            no_days=29;
        end
        
    case 'Mar'
        no_days=31;
    case 'Apr'
        no_days=30;
    case 'May'
        no_days=31;
    case 'Jun'
        no_days=30;
    case 'July'
        no_days=31;
    case 'Aug'
        no_days=31;
    case 'Sep'
        no_days=30;
        
    case 'Oct'
        no_days=31;
    case 'Nov'
        no_days=30;
    case 'Dec'
        no_days=31;
    otherwise
        disp('Unexpected')
        
end
disp('Number of Days in this month are');
no_days


        