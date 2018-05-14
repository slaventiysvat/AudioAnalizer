function [mass_1 mass_2]  = ctrl_com2mass_length(mass1,mass2)

[m n]=size(mass1);%A=[m,n] j=m, i=n
[m1,n1]=size(mass2);
%zero variant mass1 == mass2
if m1==m && n1==n 
    
    mass_2=mass2;
    mass_1=mass1;
    
  
end
%mass2[i,j] mass1[1,j] || mass1[i,1]
if m1>1 && n1>1 && m < 2 || n < 2
    
    error('mass1 must be same length');
    
end

%mass1[i,j] mass2[1,j] || mass2[i,1]
if m >1 && n > 1 && m1 < 2 || n1 < 2
    
      error('mass2 must be same length');
      
end


atr1=m*n;%attribute for  array
atr2=m1*n1;


%firt variant size mass1 > size mass2
        if atr1 > atr2
    
            a=m-m1;%string
            b=n-n1;%colum
                   
            
                  if a > 0 && b < 0
                      size_arr=length(mass2(1,:));%=====|
                      diff_arr=zeros(a,size_arr);%======|for a, "a" the new additional vector
                      mass_2=[mass2;diff_arr];%new mass=|
                      
                      size_arr=length(mass1(:,1));
                      diff_arr=zeros(size_arr,abs(b));
                      mass_1=[mass1 diff_arr];
                  end
            
                  if a < 0 && b > 0
                     
                      size_arr=length(mass1(1,:));%=====|
                      diff_arr=zeros(abs(a),size_arr);%======|for a, "a" the new additional vector
                      mass_1=[mass1;diff_arr];%new mass=|
                      
                      size_arr=length(mass2(:,1));
                      diff_arr=zeros(size_arr,abs(b));
                      mass_2=[mass2 diff_arr];
            
                  end
        end
            
%firt variant size mass1 < size mass2           
        if atr2 > atr1
   
            a=m1-m;
            b=n1-n;
            
              if a > 0 && b < 0
                      size_arr=length(mass2(1,:));%=====|
                      diff_arr=zeros(a,size_arr);%======|for a, "a" the new additional vector
                      mass_2=[mass2;diff_arr];%new mass=|
                      
                      size_arr=length(mass1(:,1));
                      diff_arr=zeros(size_arr,abs(b));
                      mass_1=[mass1 diff_arr];
                  end
            
                  if a < 0 && b > 0
                     
                      size_arr=length(mass2(1,:));%=====|
                      diff_arr=zeros(abs(a),size_arr);%======|for a, "a" the new additional vector
                      mass_1=[mass2;diff_arr];%new mass=|
                      
                      size_arr=length(mass1(:,1));
                      diff_arr=zeros(size_arr,abs(b));
                      mass_2=[mass1 diff_arr];
            
                  end
            
            
        end



end


%two variant size mass2 > size mass1

%owerwise vector 'name' must be same length


 


