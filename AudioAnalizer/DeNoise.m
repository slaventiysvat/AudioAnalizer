function  Wave_Data_Output =  DeNoise(input_data,Wave_Data_Output)


Wave_Data_Output = DirectWaivlet(input_data,Wave_Data_Output);

% Wave_Data_Output.StatWaivDecomp=statistic_out;
% 
% C = Wave_Data_Output.DirectWeivletArray;
% 
% L = Wave_Data_Output.LengthWeivleComp;

prozent=Wave_Data_Output.LevelDecElement;
% 
% prozent=prozent(length(prozent):-1:1);

Correction=Wave_Data_Output.CorrecForLevel;

% Correction=Correction(length(Correction):-1:1);

NumbComponent = Wave_Data_Output.ComponentFiltWeiv;


OutputArray = Wave_Data_Output.DirectWeivletArray;


L=Wave_Data_Output.LengthWeivleCompL;

type=Wave_Data_Output.WaivletName;

[Lo_R,Hi_R] = wfilters(type,'r');

           
         ArrayConvercion = ctrl_component_weiv(OutputArray,L,NumbComponent,prozent,Correction);
               
         ArrayConvercion = waverec(ArrayConvercion,L,Lo_R,Hi_R);
         
         Wave_Data_Output.ArrayAfterWeivletF = ArrayConvercion;

end








