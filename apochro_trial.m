clear results
load database_schott.mat
m = 1;
E = zeros;  
results = struct('E',{},'glass1',{},'glass2',{},'glass3',{},'P1',{},'P2',{},'P3',{});
for k = 1:length(database_schott)
    %n1 = database_schott(k).data.nd;
    %name1 = database_schott(k).name;
    P1 = database_schott(k).data.dPgF;  
    V1 = database_schott(k).data.Vd;  

    for j = 1:length(database_schott)
        
        %n2 = database_schott(j).data.nd;
        %name2 = database_schott(j).name;
        P2 = database_schott(j).data.dPgF;  
        V2 = database_schott(j).data.Vd; 
            
        for i = 1:length(database_schott)
        
        %n3 = database_schott(i).data.nd;
        %name3 = database_schott(i).name;
        P3 = database_schott(i).data.dPgF;  
        V3 = database_schott(i).data.Vd; 
%E function     

E = E_apo_func(V1, V2, V3, P1, P2, P3);
% maximum_E = max(E);

%results

results(m).glass1 = database_schott(k).name;  
results(m).glass2 = database_schott(j).name; 
results(m).glass3 = database_schott(i).name;
results(m).P1 = P1;
results(m).P2 = P2;
results(m).P3 = P3;
results(m).E = E;

% save('results','results')
m= m+1;
disp(m)

    
        
        end
    end
        
end


        