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

database_schott(k).catalog = 'Schott'; %brand name of the first glass in the structure
database_schott(k).name = erase(yaml_file,'.yml'); %gets rid of '.yml' string from glass names
database_schott(k).data = dummy.SPECS; % saves glass info to this entry in the structure
database_schott(k).coefficients = dummy.DATA{1,1}.coefficients; %takes coeff
database_schott(k).type = dummy.DATA{1,1}.type; %takes sellmeir types

disp(k*100/length(theFiles)) % used for displaying calculation results in percentage
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
save('database_schott','database_schott')


