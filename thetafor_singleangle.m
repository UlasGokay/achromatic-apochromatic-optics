load database.mat
% load sellmeier.mat

% a1 = 25:1:35;
% a2 = 25:1:35;
a1 = 30;
a2 = 30;

lambda = 0.5:0.05:0.9;

m = 1;
ii=1;


for k = 1:length(sellmeier)
for j = 1:length(sellmeier)  
for i = 1:length(lambda)
    
    n1 = sellmeier(k).ref(i);
    name1 = sellmeier(k).name;
     
    n2 = sellmeier(j).ref(i);
    name2 = sellmeier(k).name;
        
        results(m).name1 = sellmeier(k).name;
        results(m).name2 = sellmeier(j).name;
        
        theta(k,j,i) = defangle(n1,a1,n2,a2);
        
        results(m).defangle = theta(k,j,:);

end       
        m = m+1;
        ii = ii+1;
        disp(m)

end
end
disp('END')


