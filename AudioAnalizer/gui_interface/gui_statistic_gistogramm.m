function gui_statistic_gistogramm(Statistic1,Statistic2)
%This function build picture( gistograms ) for expected value,
%standart deviation,dispersion
     
Y1=[];
     
Y2=[];
    for i=1:1:3
        Y1(:,i)=Statistic1{2,i};%obtain statistical data from the structure1(before filtration)
    end



    for i=1:1:3
        Y2(:,i)=Statistic2{2,i};%obtain statistical data from the structure1(after filtration)
    end

% Y1=Y1';    
figure
subplot(321)
histogram(Y1(:,1));
title('Expected Value before filtration');
subplot(322)
histogram(Y2(:,1));
title('Expected Value after filtration');

subplot(323)
histogram(Y1(:,2));
title('standart deviation before filtration');
subplot(324)
histogram(Y2(:,2));
title('standart deviation after filtration');


subplot(325)
histogram(Y1(:,3));
title('dispercion before filtration');
subplot(326)
histogram(Y2(:,3));
title('dispercion after filtration');


end