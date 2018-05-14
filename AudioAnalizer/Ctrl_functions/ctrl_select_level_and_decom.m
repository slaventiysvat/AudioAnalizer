function Wave_Data_Output=ctrl_select_level_and_decom(Wave_Data_Output,prozent)
G = Wave_Data_Output.ComponentFiltWeiv;

lhg_p=length(prozent);
% lhg_lv=ones(1,prozent);
Correction=zeros(2,G);
%form the filter control array
if lhg_p > G 
    
   error('enter the correct prozent')
    
end
    
% It should be remembered that the levels are set from low to high
% if lhg_lv==G
%     Correction(2,:)=level;
% end
% 
if lhg_p==G
    Correction(1,:)=prozent;
end
if lhg_p < G
Correction(1,:)=[prozent zeros(1,G - lhg_p)];
end

for i=1:1:G
    
    if Correction(1,i) > 0
        
        Correction(2,i)=1;
        
    else
        
        Correction(2,i)=0;
        
    end
end
Wave_Data_Output.LevelDecElement=Correction(1,:);
Wave_Data_Output.CorrecForLevel=Correction(2,:);
end