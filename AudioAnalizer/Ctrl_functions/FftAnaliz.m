function   [mass_furie_result,StatFurier,f] = FftAnaliz(input_data,Fft_Data_Output)
%Autor Starokozhev S.V. 25.02.18
%This cikle make fourier transform

Fs=input_data(1).SampleRate;
sig=input_data.DataSiglnal;
mass_result=input_data.ArrayRezult;
[m,n] = size(mass_result);

if m < 1 && n < 1
    
    Error('Input array please');
end


if  m > 1 &&  n > 1
    iteration = length(mass_result(:,1));
end


if  m > 1 && n < 2
    mass_result=mass_result';
    iteration = length(mass_result);
end

if  n > 1 && m < 2
    iteration = length(mass_result);
end
% iteration = length(mass_result(:,1));


i=1;
while i<=iteration

input_signal=mass_result(i,:);
input_signal = get_norm_vektor(input_signal,2);
N=length(input_signal);

% p = nextpow2(N);
% N = 2^p;  
mass_size=length(sig');
L = N;             
coeff=floor(mass_size/L);
% t1 = (0:L-1)*T;        
Y = fft(input_signal,N);
P2 = abs(Y/mass_size);
P1 = P2(1:((mass_size/coeff)/2)+1);
P1(2:end) =coeff*2*P1(2:end); 
res_val=P1;
f = Fs*(0:((mass_size/coeff)/2))/mass_size;%массив частот
% ening=length(res_val);

% if  m > 1 &&  n > 1
   
 for j=1:1:length(res_val)
       
        mass_furie_result(i,j)=res_val(j);
      
       

 end
 
 
   mass_mx(i)=mean(res_val);
        
   mass_disp(i)=var(res_val);%dispersion (Delta)
        
   mass_rox(i)=std(res_val);%standart deviation (CKO)
 
 
% end

% if  m > 1 && n < 2  || n > 1 && m < 2
%      mass_furie_result=res_val;
%      mass_mx(i)=mean(res_val);%expected value (Mx)   
%      mass_rox(i)=std(res_val);%standart deviation (CKO)
%          mass_disp(i)=mass_rox(i)^2;
% 
% end





% plot(f,rez_val)
% mesh(mass_result)
i=1+i;
end



StatFurier{1,1}='ExpectedValue';
StatFurier{1,2}='StandardDeviation';
StatFurier{1,3}='Dispersion';
StatFurier{2,1} =mass_mx';
StatFurier{2,2} =mass_rox';
StatFurier{2,3} =mass_disp';

Fft_Data_Output.MelSpectr = ctrl_gerz2mel(mass_furie_result);

Fft_Data_Output.RezElements=mass_furie_result;


end