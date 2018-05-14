function gui_trend(signal,trend)

[m n]=size(trend);

    if m>1 && n>1
            figure
            plot(signal)
            hold on
            trend = trend(:); 
            trend=trend.*1000;
            trend = interp(trend,2);
            plot(trend','DisplayName','trend')
            hold off
    
    else 
            figure
            plot(signal)
            hold on
            trend=trend.*1000;
            plot(abs(trend'),'r')
            hold off
    end



end