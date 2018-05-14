function status = gui_navigation

choice = questdlg('Would you continue?', ...
	'Navigation Menu', ...
	'<--','-->','No thank you','No thank you');
% Handle response
switch choice
    case '<--'
        disp([choice 'coming right up.'])
        status = 1;
    case '-->'
        disp([choice 'coming right up.'])
        status = 2;
    case 'No thank you'
        disp('I''ll bring you your check.')
        status = 0;
end


end