function [Fft_Data_Output input_data] =  ctrl_FDPT(input_data,Fft_Data_Output)
% Autor Starokozhev S.V. 24.02.18
%Functoin FDPT - fragments data multiple power two
% This function cut a signal into segments of
% a multiple of powers of two and of the same lengths
% Data - input signal;
% N - number, multiple of power of two 2,4,8,16,32,64,128,256,512,1024...

Data=input_data(1).DataSiglnal;
Data=Data';
N=input_data(1).ElemSize;
M=N;

new_iteration=[];

b=1;
n=1;
index=1;
diff=length(Data);
iter=diff;
% we get the length of each additional vector, which must be complemented by zeros
while n<=iter/M
   if index >=iter
         new_iteration(n)=Data((index-1));
        break;
    end
if N>=iter
   
    ost=iter-index;
%     ost=ost-1;
    ost=index+ost;
    delta= ctrl_delta_signal(Data,ost,index);
% if 
    new_iteration(n)=length(delta);


    ogo=diff;
    break;
    
end
delta= ctrl_delta_signal(Data,N,index);


new_iteration(n)=length(delta);

ff=new_iteration(n);
if ff==1%warum muss ich main vector heraufsetzen
    ff=0;
end


diff=diff-(M + ff);
if index==1
    index=0;
end
index=index+M+ff;
N=M+index;
n=n+1;
end

max1=max(new_iteration);
% each cell contains the number of zeros for the vector
mass_result=zeros(length(new_iteration),(M + max1));%size 2D array which we divide
% mass_rezult=[];
a=1;
N=M;
ind=1;
ff=0;
%Here we divide the vector into sections of the same length
% new_iteration=[];
while a<=iter/M
    
    
    if ind >= iter
       vector=Data(abs(ind-iter));
        break;
    end
    
    if N>=iter
    
    ost=iter-ind;
    ost=ost-1;
    ost=ind+ost;
   delta= ctrl_delta_signal(Data,ost,ind);

    new_iteration(a)=length(delta);

     ff=new_iteration(a);

    break;
    
    end

    if ff==1
        ff=0;
    end
      ff=new_iteration(a);      
     
    if N+ff >= iter
        
       hk=length(Data);
       
       end_of_vector= hk-N;
       if  end_of_vector<0 || end_of_vector==0
       
           end_of_vector=hk; 
       end
           end_of_vector=end_of_vector-1;
     vector=Data(ind:(ind+end_of_vector));
    end
    
   if N+ff <= iter
       vector=Data(ind:(N+ff));
    end
%   vector=Data(ind:(N+ff));

  

    
   for i=1:1:length(vector)
       
        mass_result(a,i)=vector(i);
        
   end
   
   if ind ==1
       ind=0;
   end
   
ind=ind+M+ff;
N=M+ind;
a=a+1;

end
a=1;
leng=length(mass_result(:,1));
while a<=leng

    Entropia(a)=ctrl_entropia(mass_result(a,:),leng);
    
    a=a+1;
end
tmp=new_iteration;
input_data.NewIteration=tmp;
a=1;
stepen=2;%this parameter choice for vectors multiple 2
mass_result_mod=mass_result;
input_data.EntripiaInputSignalForPlots=Entropia;
% Data=Data';
% Fft_Data_Output.RezElements=mass_result_mod;
input_data.ArrayRezult=mass_result_mod;
Fft_Data_Output.InterWithZero = IntersecWithZero(Data);





end
