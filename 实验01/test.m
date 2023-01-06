y=input('Enter the year:');
m=input('Enter the month:');
d=input('Enter the day:');
days=date(y,m,d);
fprintf('%d',days+d);