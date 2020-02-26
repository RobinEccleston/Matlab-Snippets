%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name: jagged_combine.m
% Date: 06.11.2017
% Author: Rob Eccleston
% Version: 0.2
% Description: function to append a one array to another array, which might 
% not always have the same width.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function output_array=jagged_combine(existing_array, new_array)

    array_len=size(existing_array,2); %width of existing array
    array_rows=size(existing_array,1); %length of existing array
    
    new_array_len=size(new_array,2); %width of new array
    new_array_rows=size(new_array,1); %length of new array
    
    largest_length=max(array_len, new_array_len); %find which is widest
    
    %initialise a matrix of nans, big enough for the longest array/vector
    temp=nan(array_rows+new_array_rows, largest_length);

    %copy original data into working matrix
    temp(1:array_rows, 1:array_len)=existing_array;
    
    %copy new data at end
    temp(array_rows+1:array_rows+new_array_rows, 1:new_array_len)=new_array;

    output_array=temp;

end

