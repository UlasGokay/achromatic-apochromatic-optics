function [T] = E_apo_func(V1, V2, V3, P1, P2, P3)
%T is the vertical distance of the middle glass from the line joininig the
%two outer glasses in the P -V d?agram,
%   Kingslake chp 5.6
T = ((P3-P1).*(V2-V3)./(V1-V3))-(P3-P2);
end

