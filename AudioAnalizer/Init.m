function [input_data Fft_Data_Output Wave_Data_Output] = Init(file,N,Wavedata)

mass_furie_result=[];
mass_result_mod =[];
mass_mx=[];
mass_rox=[];
mass_disp=[];
StatisticWeiv=[];
OutputArray=[]; 
ArrayConvercion=[];
StatIntersec={2,2};
Mel=[];
L=[];
input_data(1).filename=file;
Statistic=cell(2,3);
StatisticFurier={1,2};
ArrayRezult=[];
new_iteration=[];
Correction =0;
Entropia=[];
[AudioInfo,DataSiglnal]=ctrl_OpenInputFile(file);
%===============================================================
input_data(1).DataSiglnal=DataSiglnal;

input_data(1).SampleRate=AudioInfo.SampleRate;

input_data(1).TotalSamples=AudioInfo.TotalSamples;

input_data(1).ElemSize=N;

input_data(1).ArrayRezult=ArrayRezult;

input_data(1).ArrayAfterWave=ArrayConvercion;

input_data(1).NewIteration=new_iteration;

input_data(1).EntripiaInputSignalForPlots=Entropia;
%===============================================================

Fft_Data_Output(1).RezElements=mass_result_mod;

Fft_Data_Output(1).FourierTransform=mass_furie_result;

Fft_Data_Output(1).StatisticFurier{1,1}=Statistic;

Fft_Data_Output(1).InterWithZero=StatIntersec;

Fft_Data_Output(1).MelSpectr=Mel;
%==================================================================
Wave_Data_Output(1).WaivletName=Wavedata;

Wave_Data_Output(1).Decomposition= {1,2,3,4,5,6,7,8,9,10,11,12};

Wave_Data_Output(1).LevelDecElement=Correction;

Wave_Data_Output(1).CorrecForLevel=Correction;

Wave_Data_Output(1).ComponentFiltWeiv=0;
 
Wave_Data_Output(1).DirectWeivletArray=OutputArray;

Wave_Data_Output(1).LengthWeivleCompL=L;

Wave_Data_Output(1).ArrayAfterWeivletF=ArrayConvercion;

Wave_Data_Output(1).StatWaivDecomp=StatisticWeiv;

%==================================================================
% Data1 = get_norm_vektor(input_data);
% input_data(1).DataSiglnal=Data1;
end