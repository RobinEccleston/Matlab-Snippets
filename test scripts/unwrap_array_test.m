% Test function for unwrap_array.m function
%
% Date: 06.11.2017
% Author: Rob Eccleston
% Version: 0.1

test_array_h=[[1:10];[11:20];[21:30];[31:40]]

unwrapped_data_h=unwrap_array(test_array_h)

test_array_v=[[1:10]' [11:20]' [21:30]' [31:40]']

unwrapped_data_v=unwrap_array(test_array_v, 'v')


