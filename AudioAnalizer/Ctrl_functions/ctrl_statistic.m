function statistic_out =  ctrl_statistic(C,L,N)
mass_mx=[];
mass_rox=[];
mass_disp=[];
statistic_out=zeros(N,4);
switch N
    case 1
        cd1 = detcoef(C,L,1);
      
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1); 
          
    case 2
        
        [cd1 cd2] = detcoef(C,L,[1 2]);
        
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);  
%         disp('zero')
    case 3
        
        [cd1 cd2 cd3] = detcoef(C,L,[1 2 3]);
        
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
         
%         disp('positive one')
    case 4
        
         [cd1 cd2 cd3 cd4] = detcoef(C,L,[1 2 3 4]);
         
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
         
         
         
    case 5
        
         [cd1 cd2 cd3 cd4 cd5] = detcoef(C,L,[1 2 3 4 5]);
         
              statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
        statistic_out(5,1)=5;
        statistic_out(5,2)=mean(cd5);
        statistic_out(5,3)=std(cd5);
        statistic_out(5,4)=cov(cd4);
         
         
    case 6
        
        [cd1 cd2 cd3 cd4 cd5 cd6] = detcoef(C,L,[1 2 3 4 5 6]); 
        
                 statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
        statistic_out(5,1)=5;
        statistic_out(5,2)=mean(cd5);
        statistic_out(5,3)=std(cd5);
        statistic_out(5,4)=cov(cd4);
        statistic_out(6,1)=6;
        statistic_out(6,2)=mean(cd6);
        statistic_out(6,3)=std(cd6);
        statistic_out(6,4)=cov(cd6);
     
    case 7
        [cd1 cd2 cd3 cd4 cd5 cd6 cd7] = detcoef(C,L,[1 2 3 4 5 6 7]); 
        
                  
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
        statistic_out(5,1)=5;
        statistic_out(5,2)=mean(cd5);
        statistic_out(5,3)=std(cd5);
        statistic_out(5,4)=cov(cd4);
        statistic_out(6,1)=6;
        statistic_out(6,2)=mean(cd6);
        statistic_out(6,3)=std(cd6);
        statistic_out(6,4)=cov(cd6);
        statistic_out(7,1)=7;
        statistic_out(7,2)=mean(cd7);
        statistic_out(7,3)=std(cd7);
        statistic_out(7,4)=cov(cd7);
        
        
    case 8
        [cd1 cd2 cd3 cd4 cd5 cd6 cd7 cd8] = detcoef(C,L,[1 2 3 4 5 6 7 8]);  
        
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
        statistic_out(5,1)=5;
        statistic_out(5,2)=mean(cd5);
        statistic_out(5,3)=std(cd5);
        statistic_out(5,4)=cov(cd4);
        statistic_out(6,1)=6;
        statistic_out(6,2)=mean(cd6);
        statistic_out(6,3)=std(cd6);
        statistic_out(6,4)=cov(cd6);
        statistic_out(7,1)=7;
        statistic_out(7,2)=mean(cd7);
        statistic_out(7,3)=std(cd7);
        statistic_out(7,4)=cov(cd7);
        statistic_out(8,1)=8;
        statistic_out(8,2)=mean(cd8);
        statistic_out(8,3)=std(cd8);
        statistic_out(8,4)=cov(cd8);
        
        
    case 9
        [cd1 cd2 cd3 cd4 cd5 cd6 cd7 cd8 cd9] = detcoef(C,L,[1 2 3 4 5 6 7 8 9]);
        
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
        statistic_out(5,1)=5;
        statistic_out(5,2)=mean(cd5);
        statistic_out(5,3)=std(cd5);
        statistic_out(5,4)=cov(cd4);
        statistic_out(6,1)=6;
        statistic_out(6,2)=mean(cd6);
        statistic_out(6,3)=std(cd6);
        statistic_out(6,4)=cov(cd6);
        statistic_out(7,1)=7;
        statistic_out(7,2)=mean(cd7);
        statistic_out(7,3)=std(cd7);
        statistic_out(7,4)=cov(cd7);
        statistic_out(8,1)=8;
        statistic_out(8,2)=mean(cd8);
        statistic_out(8,3)=std(cd8);
        statistic_out(8,4)=cov(cd8);
        statistic_out(9,1)=9;
        statistic_out(9,2)=mean(cd9);
        statistic_out(9,3)=std(cd9);
        statistic_out(9,4)=cov(cd9);
        
        
        
    case 10
        [cd1 cd2 cd3 cd4 cd5 cd6 cd7 cd8 cd9 cd10] = detcoef(C,L,[1 2 3 4 5 6 7 8 9 10]); 
        
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
        statistic_out(5,1)=5;
        statistic_out(5,2)=mean(cd5);
        statistic_out(5,3)=std(cd5);
        statistic_out(5,4)=cov(cd4);
        statistic_out(6,1)=6;
        statistic_out(6,2)=mean(cd6);
        statistic_out(6,3)=std(cd6);
        statistic_out(6,4)=cov(cd6);
        statistic_out(7,1)=7;
        statistic_out(7,2)=mean(cd7);
        statistic_out(7,3)=std(cd7);
        statistic_out(7,4)=cov(cd7);
        statistic_out(8,1)=8;
        statistic_out(8,2)=mean(cd8);
        statistic_out(8,3)=std(cd8);
        statistic_out(8,4)=cov(cd8);
        statistic_out(9,1)=9;
        statistic_out(9,2)=mean(cd9);
        statistic_out(9,3)=std(cd9);
        statistic_out(9,4)=cov(cd9);
        statistic_out(10,1)=10;
        statistic_out(10,2)=mean(cd10);
        statistic_out(10,3)=std(cd10);
        statistic_out(10,4)=cov(cd10);
        
    case 11  
        [cd1 cd2 cd3 cd4 cd5 cd6 cd7 cd8 cd9 cd10 cd11] = detcoef(C,L,[1 2 3 4 5 6 7 8 9 10 11]); 
        
          statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
        statistic_out(5,1)=5;
        statistic_out(5,2)=mean(cd5);
        statistic_out(5,3)=std(cd5);
        statistic_out(5,4)=cov(cd4);
        statistic_out(6,1)=6;
        statistic_out(6,2)=mean(cd6);
        statistic_out(6,3)=std(cd6);
        statistic_out(6,4)=cov(cd6);
        statistic_out(7,1)=7;
        statistic_out(7,2)=mean(cd7);
        statistic_out(7,3)=std(cd7);
        statistic_out(7,4)=cov(cd7);
        statistic_out(8,1)=8;
        statistic_out(8,2)=mean(cd8);
        statistic_out(8,3)=std(cd8);
        statistic_out(8,4)=cov(cd8);
        statistic_out(9,1)=9;
        statistic_out(9,2)=mean(cd9);
        statistic_out(9,3)=std(cd9);
        statistic_out(9,4)=cov(cd9);
        statistic_out(10,1)=10;
        statistic_out(10,2)=mean(cd10);
        statistic_out(10,3)=std(cd10);
        statistic_out(10,4)=cov(cd10);
        statistic_out(11,1)=11;
        statistic_out(11,2)=mean(cd11);
        statistic_out(11,3)=std(cd11);
        statistic_out(11,4)=cov(cd11);
        
    case 12
        [cd1 cd2 cd3 cd4 cd5 cd6 cd7 cd8 cd9 cd10 cd11 cd12] = detcoef(C,L,[1 2 3 4 5 6 7 8 9 10 11 12]);
        
        statistic_out(1,1)=1;
        statistic_out(1,2)=mean(cd1);
        statistic_out(1,3)=std(cd1);
        statistic_out(1,4)=cov(cd1);  
        statistic_out(2,1)=2;
        statistic_out(2,2)=mean(cd2);
        statistic_out(2,3)=std(cd2);
        statistic_out(2,4)=cov(cd2);
        statistic_out(3,1)=3;
        statistic_out(3,2)=mean(cd3);
        statistic_out(3,3)=std(cd3);
        statistic_out(3,4)=cov(cd3);
        statistic_out(4,1)=4;
        statistic_out(4,2)=mean(cd4);
        statistic_out(4,3)=std(cd4);
        statistic_out(4,4)=cov(cd4);
        statistic_out(5,1)=5;
        statistic_out(5,2)=mean(cd5);
        statistic_out(5,3)=std(cd5);
        statistic_out(5,4)=cov(cd4);
        statistic_out(6,1)=6;
        statistic_out(6,2)=mean(cd6);
        statistic_out(6,3)=std(cd6);
        statistic_out(6,4)=cov(cd6);
        statistic_out(7,1)=7;
        statistic_out(7,2)=mean(cd7);
        statistic_out(7,3)=std(cd7);
        statistic_out(7,4)=cov(cd7);
        statistic_out(8,1)=8;
        statistic_out(8,2)=mean(cd8);
        statistic_out(8,3)=std(cd8);
        statistic_out(8,4)=cov(cd8);
        statistic_out(9,1)=9;
        statistic_out(9,2)=mean(cd9);
        statistic_out(9,3)=std(cd9);
        statistic_out(9,4)=cov(cd9);
        statistic_out(10,1)=10;
        statistic_out(10,2)=mean(cd10);
        statistic_out(10,3)=std(cd10);
        statistic_out(10,4)=cov(cd10);
        statistic_out(11,1)=11;
        statistic_out(11,2)=mean(cd11);
        statistic_out(11,3)=std(cd11);
        statistic_out(11,4)=cov(cd11);
        statistic_out(12,1)=12;
        statistic_out(12,2)=mean(cd12);
        statistic_out(12,3)=std(cd12);
        statistic_out(12,4)=cov(cd12);
        
    otherwise
        disp('other value')
end

end
