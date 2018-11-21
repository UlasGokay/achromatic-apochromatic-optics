%Ula? S. Gökay/ ulas.gokay@isikun.edu.tr / OPAM I??k University/Turkey

%use the results structure

%remove NaN and InF values from the results structure 
%NaN and InF values occur due to 0/0 results in the E formula
A = results(~isnan([results.E]));
B = A(~isinf([A.E]));
% T = struct2table(B); %table is easier to read

%in order to sort the structure, first convert to cells, sort and take back
%to structure

Afields = fieldnames(B);
Acell = struct2cell(B);
sz = size(Acell);

Acell = reshape(Acell, sz(1), []);
Acell = Acell'; 
Acell = sortrows(Acell, 1);
Acell = reshape(Acell', sz);
Asorted = cell2struct(Acell, Afields, 1);

%ascending order to see the maximum value at the end of the calculation
for id = 1:length(Asorted)
    fprintf('%d\n',id)
    disp(Asorted(id))
end

disp('The End')

