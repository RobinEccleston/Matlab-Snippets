%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function: robust_save
% Version: 0.02
% Date: 13.11.2017
% Author: Rob Eccleston
% Description: Tries to write a file until it is successful. Will try 100
% times, with a 1 second pause in between attempts then just continue
% without killing the program.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function robust_save(filename, var_name_str)

    %we have to load the variable from the base work space into a variable
    %with the same name within the function workspace. To do this, make a
    %string containing the command that we would run, and then evaluate the
    %string.
    load_from_base_wkspce_command=sprintf('%s=evalin(''base'', ''%s'');', var_name_str, var_name_str);
    eval(load_from_base_wkspce_command);
    
    i=1;
    while i<100
        try
            save(filename, var_name_str);
            i=101;
            fprintf('Saved ''%s'' successfully\n', var_name_str)

        catch
            fprintf('Error when saving ''%s'', trying again in 1 second...\n', var_name_str);
            pause(1);
        end
        i=i+1;
    end

end