%Schott Glasses placed in here
%carefull about the place of the myfolder file adressing
%myFolder = 'C:\Users\ulas.gokay\Desktop\glass pair calculator_matlab\refractiveindex.org database\data\glass\schott';
% myFolder = 'C:\Users\ulas.gokay\Dropbox\glass pair calculator_matlab\refractiveindex.org database\data\glass\schott';
myFolder = 'C:\Users\ulas.gokay\Desktop\glass pair calculator_matlab\refractiveindex.org database\data\glass\schott';
%reads all .yml files
filePattern = fullfile(myFolder, '*.yml');
theFiles = dir(filePattern);
%%%%%%%%%%%%%%%%%
lee = length(theFiles); 

% for all schott glasses
for k = 1:lee 
    yaml_file = theFiles(k).name; %makes a structure
    dummy = ReadYaml(yaml_file); %reads into structure 'dummy'

%name of the structure is 'database'

database(k).catalog = 'Schott'; %brand name of the first glass in the structure
database(k).name = erase(yaml_file,'.yml'); %gets rid of '.yml' string from glass names
database(k).data = dummy.SPECS; % saves glass info to this entry in the structure
database(k).coefficients = dummy.DATA{1,1}.coefficients; %takes coeff
database(k).type = dummy.DATA{1,1}.type; %takes sellmeir types

disp(k*100/length(theFiles)) % used for displaying calculation results in percentage
end

%Ohara Glasses placed in here
%carefull about the place of the myfolder file adressing
%myFolder = 'C:\Users\ulas.gokay\Desktop\glass pair calculator_matlab\refractiveindex.org database\data\glass\ohara';
% myFolder = 'C:\Users\ulas.gokay\Dropbox\glass pair calculator_matlab\refractiveindex.org database\data\glass\ohara';
myFolder = 'C:\Users\ulas.gokay\Desktop\glass pair calculator_matlab\refractiveindex.org database\data\glass\ohara';
filePattern = fullfile(myFolder, '*.yml');
theFiles = dir(filePattern);
%%%%%%%%%%
%For all Ohara glasses
for k = 1:length(theFiles) 
yaml_file = theFiles(k).name;
%gets rid of a faulty glass entry
try
dummy = ReadYaml(yaml_file); 
catch
        disp('YAKA') %displays string 'YAKA' for informing about the faulty entry
end

%%%%%
%adds the following ohara entries at the bottom of the schott list

database(k+lee).catalog = 'Ohara';
database(k+lee).name = erase(yaml_file,'.yml');
database(k+lee).data = dummy.SPECS;
database(k+lee).coefficients = dummy.DATA{1,1}.coefficients;
database(k+lee).type = dummy.DATA{1,1}.type;

disp(k*100/length(theFiles))
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
save('database','database')


