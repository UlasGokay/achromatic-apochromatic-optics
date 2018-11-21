function [ n ] = sellmeier2( c1,c2,c3,c4,c5,c6,c7, lambda )
%UNTÝTLED5 Summary of this function goes here
%   Detailed explanation goes here

n = sqrt(1+c1+c2*lambda.^2/(lambda.^2-c3)+c4*lambda.^2/(lambda.^2-c5)+c6*lambda.^2/(lambda.^2-c7));
% n=real(n);
end

