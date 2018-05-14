function gui(mass,f,Title,typePlot)

% a=size(mass);
    if (typePlot)==1
        figure
        plot(mass) 
        title(Title)
        a=-max(mass);
        b=max(mass);
        c=length(mass);
         xlim([0 c])
         ylim([a b])
    end

    if (typePlot)==2
        
        X=f;
        Y=1:length(mass(:,1));
        Z=mass;
        a=max(max(mass));
        mass(a<(a/100)==0)
        figure
        mesh(X,Y,Z)
        title(Title)
   
        xlabel('f(Hz)');
        ylabel('Number of sector');
        zlabel('|Amplitude(f)|');
        d1=length(f);
            a=-max(max(mass));
        b=max(max(mass));
        c=length(Y);
        b1=6.160580912863071e+03;
         xlim([0 b1])
%          d1=d1/2;
         ylim([0 c])
    end

if typePlot>2 || typePlot<0
 error('Input correct type please');
end
end