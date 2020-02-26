%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title: unwrap_array.m
% Version: 0.1
% Date 06.11.2017
% Author: Rob Eccleston
%
% Description: Takes an input array, and returns it as a 1xN array. If no
% direction is specified for the input, it will be assumed that the data
% runs in rows, if anything other than 'h' is specified for the direction
% then it will be assumed that the data runs vertically.
%
% Usage:
% 'h' or 'v' for horizontal or vertical arrays
%
% Examples: for input_array as follows:
%
% a1 a2 a3 a4 a5 a6
% b1 b2 b3 b4 b5 b6 => use 'h' to get [a1 a2 a3 ... b1 b2 b3 ... c1 c2 c3]
% c1 c2 c3 c4 c5 c6
%
% a1 a2 a3 a4 a5 a6
% b1 b2 b3 b4 b5 b6 => use 'v' to get [a1 b1 c1 ... a2 b2 c2 ... a3 b3 c3]
% c1 c2 c3 c4 c5 c6
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function unwrapped_data=unwrap_array(input_array, direction)

    if exist('direction','var') == 1
        array_dir=direction;
    else
        array_dir='h';
    end

   [a b]=size(input_array);

    if array_dir=='h'
        
        unwrapped_data=reshape(input_array',[1, a*b]);
        
    else
        
        unwrapped_data=reshape(input_array,[a*b, 1])';

    end
    
    

end