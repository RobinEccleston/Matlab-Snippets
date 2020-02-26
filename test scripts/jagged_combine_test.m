% Test function for jagged_combine.m function
%
%Date: 19.08.2016
%Author: Rob Eccleston
%Version: 0.1

existing_array=[];

for i=1:20
    
    new_vector_len=1+round(rand(1)*20);
    new_vector=new_vector_len*ones(new_vector_len,new_vector_len);
    
    existing_array=jagged_combine(existing_array, new_vector);

end

existing_array