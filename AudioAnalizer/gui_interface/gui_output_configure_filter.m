function  [Wave_Data_Output level_and_decomp] = gui_output_configure_filter(Wave_Data_Output)

G = Wave_Data_Output.ComponentFiltWeiv;

level_and_decomp=zeros(1,G);

disp('This wavelet filter can decompose the signal into G components');
    
            prompt = 'Select please how much component you are want to filtered: ';
            quantity_component = input(prompt,'s');
            while (isnan(str2double(quantity_component)))
                prompt = 'Select please how much component you are want to filtered:';
                quantity_component = input(prompt,'s');
            end
           quantity_component = str2double(quantity_component);
            disp('You must choose which components should be filtered');
            disp('Select plese number each component');
            disp('You can choose in 1 to G');
            
            n=1;
            while n <= quantity_component
                
                   prompt = 'Enter The Component: ';
                    Component(n) = input(prompt,'s');
                    
                    while (isnan(str2double(Component(n))))
                        prompt = 'Enter The Component:';
                        Component(n) = input(prompt,'s');
                    end
                    
                    n=n+1;
   
            end
            
            Component=str2double(Component);
            Component = sort(Component);
                      
           disp('Enter the gain value for those components like 1..100%');
           
           n=1;
           
       while n <= quantity_component
                
           prompt = 'Enter The Gain for Component(n): ';
           
                        Gain(n) = input(prompt);
                    
                    while isnan(Gain(n))
                        prompt = 'Enter The Gain for Component(n): ';
                        Gain(n) = input(prompt);
                    end
           
           n=n+1;
               
       end
%                  Gain=str2double(Gain);
             
        for j=1:1:length(Component)
            
                   for i=1:1:G
                       if i==Component(j)
                           
                       level_and_decomp(i)=Gain(j);
                       
                       else 
                           level_and_decomp(i)=0;
                       end

                   end
        end
 
 disp(level_and_decomp);
        
end