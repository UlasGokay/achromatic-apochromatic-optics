clear all
load database.mat

lambda = 0.5:0.05:0.9;
for k = 1:length(database)

for i=1:length(lambda)

A(k).type = database(k).type;
A(k).coefficients2 = str2num(database(k).coefficients);

if A(k).type == 'formula 2'
    c1 = A(k).coefficients2(1);
    c2 = A(k).coefficients2(2);
    c3 = A(k).coefficients2(3);
    c4 = A(k).coefficients2(4);
    c5 = A(k).coefficients2(5);
    c6 = A(k).coefficients2(6);
    c7 = A(k).coefficients2(7);
    
    sellmeier(k).name = database(k).name;
    sellmeier(k).ref(i) = sellmeier2(c1,c2,c3,c4,c5,c6,c7, lambda(i));
    sellmeier(k).lambda(i) = lambda(i);
     
elseif  A(k).type == 'formula 3'
     c1 = A(k).coefficients2(1);
     c2 = A(k).coefficients2(2);
     c3 = A(k).coefficients2(3);
     c4 = A(k).coefficients2(4);
     c5 = A(k).coefficients2(5);
     c6 = A(k).coefficients2(6);
     c7 = A(k).coefficients2(7);
     c8 = A(k).coefficients2(8);
     c9 = A(k).coefficients2(9);
     c10 = A(k).coefficients2(10);
     c11 = A(k).coefficients2(11);
    
    sellmeier(k).name = database(k).name;
    sellmeier(k).ref(i) = sellmeier3(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11, lambda(i));
    sellmeier(k).lambda(i) = lambda(i);
else
    sellmeier(k).name = database(k).name;
    sellmeier(k).ref(i) = 'NaN';
    sellmeier(k).lambda(i) = lambda(i);
end
end

end


