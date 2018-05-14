function  entropia_value= ctrl_entropia(x,leng)
%Autor Starokozhev S.V. 19.03.18

 %this function return entropia value for each signals 
 % histogramm retun probability density of a signal
%  leng=length(x);
%  N=sqrt(leng);
%  N=ceil(N);%https://ru.wikipedia.org/wiki/Гистограмма_(Статистика)
%  
% % The result of the histogram is the number of numbers,
% % of those in the range, but you need to get the probability density this is done so
% % (divide by the lengths of the sample and by the width of the interval):
% %                     h = figure('Visible','off');
%                     h=histogram(x,N);
%                     count = h.BinCounts;
%                     shag=h.BinEdges;
%                     p = count./((leng*(shag(2)-shag(1))));
% %                     trapz(shag(2:end),p) 
%                     % normalize p so that sum(p) is one.
%                     entropia_value = -sum(p.*log2(p));
         entropia_value = entropy(x);   


end