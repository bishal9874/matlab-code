arr = input('Enter the x values: ');
fx = input('Enter the y values: ');
x = input('Enter a value: ')
lnth = length(arr);
p = 0;
for i = 1 : lnth
    prdct = 1;
    for j = 1 : lnth
        if j ~= i
            prdct= prdct*((x-arr(i))/(arr(i)-arr(j)));
        end
    end
    p = p + fx(i)*prdct;
end
display(p);