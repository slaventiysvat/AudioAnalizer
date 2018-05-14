function y = ctrl_gerz2mel(x)
% Autor Starokozhev S.V. 20.03.18
%we obtain the coefficients
%from the "mel" for the frequency
[m n]=size(x);
y=zeros(m,n);
if m == 1 && n == 1
    
    error('invalid size mass');
    
end
b=1;
a=1;
leng1=length(x(:,1));
leng2=length(x(1,:));
if m > 1 && n > 1
    
    while a < leng1
        
       for b=1:1:leng2
            
                tmp(b) = 2595.*log10(1+((x(a,b)./700)));
                
        end
                a=a+1;
                y(a,:) = tmp;
    end
end

a=1;

if m > 1 && n < 1 ||  m < 1 && n > 1
    
    while a<length(x)
        
        y(a)= 2595.*log10(1+((x(a)./700)));
        
        
        a=a+1;
    end
end

end