function  answer = gui_min_max_size
% start_output = input(prompt,'s');
% prompt = 'Enter end output: ';
% end_output = input(prompt,'s');

prompt = {'Enter start:','Enter end:'};
dlg_title = 'Input';
num_lines = 1;
defaultans = {'1'};
% answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
answer = inputdlg(prompt,...
              'Customer', [1 10; 1 10]); 
end