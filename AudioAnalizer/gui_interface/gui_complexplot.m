function gui_complexplot(mass_corr,mass_result,mass_furie_result,trend,f,Fft_Data_Output,input_data)

% 
disp('available plots for display');
disp(length(mass_result(:,1)));
answer = gui_min_max_size;
start_output=str2num(answer{1,1});
end_output=str2num(answer{2,1});

    if end_output < start_output || start_output == end_output 
                answer = gui_min_max_size;
                start_output=str2num(answer{1,1});
                end_output=str2num(answer{2,1});
    end
i=0;
i=i+start_output;
figure(2)
contour(mass_corr)
xlim([800 1400]);
title('Contour of autocorrelation');

        while i <= end_output
    
           status = gui_navigation;
          if status == 0
              
               break;
               
          end
       
        if status==2

        i=i+0;
                 
        end    
                    
             if status == 1
                 
                    
                    if i<start_output
                        i=i+1;
                            error('please input -->');
                        
                    else
                        i=i-1;
                    end
       
             end
             
             
%              a=max(mass_furie_result);
%              b=max(trend);
%              x=b/a;
%              mass_furie_result=mass_furie_result.*x;
            figure(1)
            subplot(4,4,[1 2 5 6])
            %пусто
            subplot(4,4,[3 4])
%             entropia_value= ctrl_entropia(mass_result(i,:));
%                 [p_ent,xi] = ksdensity(mass_result(i,:));
                % функция предназначена для расчета значений функции распределения плотности
                % вероятностей f для значений случайной величины xi методом
                % непараметрического сглаживания по исходной выборке х. 
%                 p_ent = p_ent ./ numel(xi);
%                 X=-sum(p_ent.*log2(p_ent));

                entropia_value = ctrl_entropia(mass_result(i,:));

%                  X=entropy(mass_result(i,:));
                 entropia_value = eval(sprintf('%.3f',entropia_value));
                 plot(mass_result(i,:))
                 legend(['number plot='  num2str(i),'Entropia = ' num2str(entropia_value)]);
%                  legend(['Номер графика=' num2str(i)]);
%                  axes('FontSize',24);
            subplot(4,4,[7 8])
                 plot(f,mass_furie_result(i,:))
                 xlabel('F(T)');
                 ylabel('Amplitude');
%                ylabel('Амплитуда');;
                 hold on
                 plot(f,trend(i,:))
                 legend('Spectrum of signal','Trend line');
%                legend('Спектр сигнала','Линия тренда');
                 hold off
            subplot(4,4,[11 12])

            %avt = xcorr(x);
            avt = mass_corr(i,:)./max(mass_corr(i,:));  % нормирование автокорреляционной функции
            avt_len = length(mass_corr(i,:));
            avt = avt(avt_len/2:avt_len);
            plot(avt)
            legend('Autocorrelation');
%                  xlabel('F(T)');
                 ylabel('Amplitude');
            subplot(4,4,[9 13])
                  X1=input_data.DataSiglnal;
                  histogram(X1); 
                  xlabel({'Probability density for' ; ' the entire signal'},'FontSize',10);
                   
            subplot(4,4,[10 14])
            A = Fft_Data_Output.InterWithZero{2, 1};
           histogram(A);  
           xlabel({'Probability density' ;' of intersection with zero'},'FontSize',10);
%             title(titles);
            
            subplot(4,4,[15 16])
                plot(log10(abs(mass_furie_result(i,:))).^2)
                xlabel('log|S(t)|^2');    
%              

             
             i=i+1;

       
       end
end




