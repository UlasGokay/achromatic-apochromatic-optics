
% theta(:,:,:,:,0) = 0;
m=1;
lambda = 0.5:0.05:0.9;
a1 = 29:0.5:30; %dont make this too wide, than it eats up the RAM
a2 = 29:0.5:30; %dont make this too wide, than it eats up the RAM

for ii = 1:length(a2)
for jj = 1:length(a1)
    
for k = 1:length(sellmeier)
    for j =1:length(sellmeier)
        
for i = 1:length(lambda)
    
if theta(:,:,:,:,1)==theta(:,:,:,:,9)
            
        pairs(m).name1 = sellmeier(k).name;
        pairs(m).name2 = sellmeier(j).name;
        pairs(m).defangle = theta(ii,jj,k,j,:);
        else
            disp('NAN')
end
m = m+1;
        disp(m)
end
    end
end
end
end