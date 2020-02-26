
this_loc=mfilename('fullpath');

directory_list=strfind(this_loc, '\');
this_dir=this_loc(1:directory_list(end));



fprintf(repmat('-', 1, 100));
fprintf('\n');
fprintf(' %s.m\n', this_loc);
fprintf(repmat('-', 1, 100));
fprintf('\n');

fprintf('Adding folder to PATH. The following scripts are now available:\n\n');

addpath(this_dir);

folder_contents=what(this_dir);

num_m_files=size(folder_contents.m,1);

for i=1:num_m_files
    this_file=folder_contents.m{i};
    
    if ~strcmp(this_file, 'startup.m')
        fprintf('* %s\n', this_file);
    end
    
end


fprintf('\nDone.\n');
