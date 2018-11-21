% this code uses the function 'DAGpairs.m' which contains paraxial formula
% from Ragazzoni paper

clear results
%'database.mat' file is produced from the .yml files of the
%refractiveindex.org site from Schott and Ohara catalogs. it's produced by
%'glass_database_scanner.m'.

load database.mat

alpha1 = 34.76 ; %angle of the first prism [degree], changes with the calculated
% angle of the first prism from zemax

delta = 1.614; %angular separation for the DAG prism pair [degree]
%R = 1/F, separation between pupil images is 20%R

n = 1;

for k = 1:length(database)
    
    n1 = database(k).data.nd;
    name1 = database(k).name;
      
    for j = 1:length(database)
        
        n2 = database(j).data.nd;
        name2 = database(j).name;
                
        alpha2 = DAGpairs(n1, n2, delta, alpha1);
        
        
        if (alpha1 >= 30.05) && (alpha2 <= 30.15) %this angle window is determined arbitrarly
        %should depend on tolerances
            results(n).glass1=database(k).name;
            results(n).glass2=database(j).name;
            results(n).alpha2= alpha2;        
            n=n+1;    
            disp(n)
        end
    end
        
end

        