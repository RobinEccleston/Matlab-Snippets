function save_plot(file_name)

    pause(0.01)
    %file_name is optional - if not set the style will be applied only
    
    set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);

    sdf('thesis_style')


    set(findall(gca, 'Type', 'Axes'),'LineWidth',2);

    set(findall(gca, 'Type', 'Line'),'LineWidth',2);
    set(findall(gca, 'Type', 'Axes'),'FontSize',14);
    set(findall(gca, 'Type', 'Axes'),'FontWeight','Bold');




    snam='Leave everything alone'; % The name of your style file (NO extension)
    s=hgexport('readstyle',snam);

    
    if exist('file_name','var')
        fnam_svg=strcat(file_name, '.svg'); % your file name
        s.Format = 'svg'; %I needed this to make it work but maybe you wont.
        hgexport(gcf,fnam_svg, s);
    end

end
