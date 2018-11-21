function [ n ] = sellmeier3( c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11, lambda )
%UNTÝTLED6 Summary of this function goes here
%   Detailed explanation goes here

n = sqrt(c1+(c2*lambda.^c3)+(c4*lambda.^c5)+(c6*lambda.^c7)+(c8*lambda.^c9)+(c10*lambda.^c11));
% n = real(n);
end

