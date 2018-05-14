function Wave_Data_Output= ctrl_size_weiv_array(input_data,Wave_Data_Output)
%Here we estimate how many it is possible to break an array
SYG=input_data.ArrayRezult;
ThypeWeivlet=Wave_Data_Output.WaivletName;  
lev = wmaxlev (length(SYG), ThypeWeivlet);
G=lev;
Wave_Data_Output.ComponentFiltWeiv=G;

end