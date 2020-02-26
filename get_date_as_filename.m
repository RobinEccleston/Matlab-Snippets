
function date_as_filename=get_date_as_filename()

    date_as_filename=datestr(now, 31)
    date_as_filename=strrep(date_as_filename, ' ', '_')
    date_as_filename=strrep(date_as_filename, ':', '-')

return