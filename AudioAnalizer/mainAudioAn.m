
%Autor Starokozhev S.V. 24.02.18
% master - file in which we use all functions AudioAnalizer
% N  - The number which a multiple of degree 2
% filename  - name of file
% AudiInfo - the structure which has all data of file
% DataSignal - Samples of signal
% ctrl_FDPD - function for fragments data multiple power two
% DeNoise - A function that removes unnecessary components from the signal
% DirectWaivlet - direct wavelet transformation, this function has  2 parameters
% with names SYG and input_data. SYG - data of signal, 
% input_data the structure for configurations this function
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
clear
clc
close all
filename='/home/stark/git/AudioFilter/AudioAnalizer/OriginalSignal/01-01-01-_AudioTrimmer_com_1_.wav';
% filename='/mnt/work/develop/matlab/voip/source/58691/radio.wav';
N=2048; %size elementary plot for processing(ElemSize)
wavename='sym8';
Wavedata=wavename;
%=============================initialization==============================
[input_data Fft_Data_Output Wave_Data_Output] = Init(filename,N,Wavedata);%1%
%=============================furie=======================================
[Fft_Data_Output input_data]= ctrl_FDPT(input_data,Fft_Data_Output);


X1=input_data.DataSiglnal;
Fs=input_data.SampleRate;

TestMass=input_data.ArrayRezult;
TestMass=TestMass(31:50,:);
X1=X1(1:65536);
audiowrite('MyTest.wav',X1,Fs)
sound(X1,Fs);
tmp=input_data.NewIteration;
arr_start=1;
arr_end=1;
%ctrl_select_signal_sections выбирает сколько нужно векторов для обработки
%после нарезки, грубо говоря мы выделяем сколько нужно взять из массива
%нарезнаных векторов. Как пользоватся?
% Функция принимает 3 параметра, массив нарезанных векторов и режим работы
% функции их 3: 1)arr_start=1 arr_end=1 -выбрать весть массив(нечего нем.)
%               2)arr_start=0 arr_end=0 -выбрать участок массива через
%               Command Window, 
%               3)arr_start > 0 arr_end > 0 - выбрат молча кусок. без
%               вопросов()
NewArray=ctrl_select_signal_sections(input_data.ArrayRezult,arr_start,arr_end);%this function select signal sectors

input_data.ArrayRezult=NewArray;

[mass_furie_result,Statistic1,f] = FftAnaliz(input_data,Fft_Data_Output);%3%
% 
% gui(X1,f,'male voise(Before Filtration)',1)
% 
% gui(mass_furie_result,f,'male voise(Before Filtration)',2)
% 
% GuiGenderHistogram(Fft_Data_Output,' Intersection with zero(male voise)')

Fft_Data_Output.FourierTransform = mass_furie_result;

mass_result=input_data.ArrayRezult;

Fft_Data_Output.StatisticFurier{1,1} = Statistic1;

% % % %=======================Weivlet=========================================
Wave_Data_Output= ctrl_size_weiv_array(input_data,Wave_Data_Output);%Here we estimate how many it 
%is possible to break an array
G = Wave_Data_Output.ComponentFiltWeiv;

% [Wave_Data_Output level_and_decomp] =
% gui_output_configure_filter(Wave_Data_Output);%не работает пока

Wave_Data_Output=ctrl_select_level_and_decom(Wave_Data_Output,[0 100 100 100 100 100 0]);%вейевлет фильтрация

Wave_Data_Output = ctrl_deNoise(input_data,Wave_Data_Output);%вейевлнт фильтрация
input_data.ArrayAfterWave=Wave_Data_Output.ArrayAfterWeivletF;
X2=input_data.DataSiglnal;%сигнал после вейевлета без кусков
Fs=input_data.SampleRate;
% outputsignal=Wave_Data_Output.ArrayAfterWeivletF;

input_data.ArrayRezult=mass_furie_result;%преобразование фурье до фильтрации

Wave_Data_Output=ctrl_select_level_and_decom(Wave_Data_Output,[100 0 0 0 0 0 0 ]);%выделение огибающей

Wave_Data_Output = ctrl_deNoise(input_data,Wave_Data_Output);% фильтрация до выделения

trend=Wave_Data_Output.ArrayAfterWeivletF;%вектор огибающих

input_data.ArrayRezult=input_data.ArrayAfterWave;

[mass_furie_result1,Statistic2,f1] = FftAnaliz(input_data,Fft_Data_Output);%3%

[mass_corr mass_lag]= ctrl_correlations(mass_furie_result1,mass_furie_result);%корреляция 

%gui_complexplot работает следующим образом, после ее включения нужно
%выбрать что показать от скольки до скольки. И навигация D вперед, A -
%назад, если ошибочно будет введено число то нужно будет букву ввести
%повторно

gui_complexplot(mass_corr,mass_result,mass_furie_result,trend,f,Fft_Data_Output,input_data)%вывод корреляции, огибающей

Fft_Data_Output.StatisticFurier{1,2} = Statistic2;
gui(X2,f,'male voise(After Filtration)',1)
gui(mass_furie_result1,f1,'male voise(After Filtration)',2)

gui_statistic_gistogramm(Statistic1,Statistic2)%гистограммы










