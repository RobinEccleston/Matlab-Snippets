
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title: string_contains
% Date: 16.11.2017
% Version 0.01
% Author: Robin Eccleston
% Description:
%
% This function checks whether there is a substring within a larger string.
% This has only been tested with a single character and doesn't have any
% error handling etc.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function result = string_contains(mystring, contains)
    
    result=0;
    
    result_index=strfind(mystring, contains);
    
    if  max(size(result_index))>0 
        result=1;
    end

end
