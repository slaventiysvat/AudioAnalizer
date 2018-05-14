function  NewArray=ctrl_select_signal_sections(OldArray,ar_start,ar_end)

flag1=0;% choose sector of array to conversion
flag2=0;% choose all array to convercion
[m n] = size(OldArray);
%this function select signal sectors
if m ==1 || n==1
    
    error('need correct array');
   
end



    if ar_start==1 && ar_end == 1 && m > 1 && n > 1

            flag2=1;
           
    elseif  ar_start>1 && ar_end > 1 && m > 1 && n > 1
        
          NewArray=OldArray(ar_start:ar_end,:);%choose sector of array without inputs function
        
    elseif ar_start==0 && ar_end==0 && m > 1 && n > 1
        
            flag1=1;
        
    end
    
    if flag2==1
        
        NewArray=OldArray;
        
   
    end


    if flag1==1
    
            prompt = 'Enter start Array: ';
            start_output = input(prompt,'s');
            while (isnan(str2double(start_output)))
                prompt = 'Enter start Array: ';
                start_output = input(prompt,'s');
            end
            prompt = 'Enter end Array: ';
            end_output = input(prompt,'s');
            while (isnan(str2double(end_output)))
                prompt = 'Enter end Array: ';
                end_output = input(prompt,'s');
            end
   
    
                start_output=str2double(start_output);
                end_output=str2double(end_output);
    
    if end_output < start_output || start_output == end_output 
        
        prompt = 'Enter start output: ';
        start_output = input(prompt,'s');
        prompt = 'Enter end output: ';
        end_output = input(prompt,'s');  
        start_output=str2double(start_output);
        end_output=str2double(end_output);
    end
    

    
    NewArray=OldArray(start_output:end_output,:);
    end
   
end




