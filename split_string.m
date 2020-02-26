%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title: split_string
% Date: 16.11.2017
% Version 0.01
% Author: Robin Eccleston
% Description:
%
% Existing in newer versions of matlab but not the one I have. This
% removes empty spaces so doesnt preserve structure. It also removese the
% delimier. Not fully tested.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function output = split_string(this_string, delimiter)
 
    %this_string='a,,,a,,bcabcabc,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,a,,b,,c,,d,,e,,f,,g,,h,,i,,j,,k,,l,a,,,b,,,c,,,d,,e,,,f,,,g,'
    %delimiter=','
    
    %while the string starts with the delimiter, remove the delimiter
    del_len=size(delimiter,2);
    while (this_string(1:del_len)==delimiter)
        this_string(1:del_len)=[];
    end
 

    %find all the points that a string is split
    %split_points=strfind(this_string, delimiter);
    split_points = regexp(this_string, delimiter);

    split_points=[0, split_points];
    
    
    
    %get the number of points where we split it
    num_split_points=size(split_points,2)-1;
    
    
    output='';
    counter=1;
    %loop through each point to split the string
    
    if split_points(1)==1;

    end
            
    for i=1:num_split_points
        
        start_pos=split_points(i)+1;
        end_pos=split_points(i+1)-1;
        
        if end_pos>=start_pos
            this_section=this_string(split_points(i)+1:split_points(i+1)-1);
        
            output{counter}=this_section;

        
        counter=counter+1;
        
        end
    end
    
    
    if ~(split_points(end)==size(this_string,2))
        this_section=this_string(split_points(i+1)+1:size(this_string,2));
        
        output{counter}=this_section;
    end


end
