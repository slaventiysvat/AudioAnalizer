function Wave_Data_Output = ctrl_deNoise(input_data,Wave_Data_Output)

mass_result_mod=input_data.ArrayRezult;
[m n]=size(mass_result_mod);

        if m > 1 && n==1
            
            Wave_Data_Output =  DeNoise(input_data,Wave_Data_Output);
            ArrayConvercion= Wave_Data_Output.ArrayAfterWeivletF;
        end
        
        if m == 1 && n > 1
            
            Wave_Data_Output =  DeNoise(input_data,Wave_Data_Output);
            ArrayConvercion= Wave_Data_Output.ArrayAfterWeivletF;
        end
        
    if m > 1 && n > 1
    
            for i=1:1:length(mass_result_mod(:,1))
    
                input_data.ArrayRezult=mass_result_mod(i,:);
                 Wave_Data_Output =  DeNoise(input_data,Wave_Data_Output);
                ArrayConvercion(i,:)= Wave_Data_Output.ArrayAfterWeivletF;
%     Wave_Data_Output
   
            end
    end
% Fft_Data_Output.RezElements=mass_result_mod;            
Wave_Data_Output.ArrayAfterWeivletF=ArrayConvercion;
input_data.ArrayRezult  = ArrayConvercion;
end