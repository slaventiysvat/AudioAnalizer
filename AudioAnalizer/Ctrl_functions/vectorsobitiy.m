function mass = vectorsobitiy(new_wector,M,index)

% M=513;
% new_wector = get_norm_vektor(SYG,512);
% count=length(new_wector)/512;
rez=M-index;
% fragment=new_wector(index:index+(M-1));
mass=zeros(1,rez);
a=1;
fragment=new_wector(index:M);
S1=sign(fragment);%берем фрагмент
t1=1:1:M; 
i=2;
while i<=length(S1)
           
           
    mass(i)=(S1(i)-S1(i-1))/(t1(i)-t1(i-1));%,берем производную
                
                 
i=i+1;
end