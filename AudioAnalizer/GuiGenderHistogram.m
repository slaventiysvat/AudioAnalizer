function GuiGenderHistogram(Fft_Data_Output,titles)


A = Fft_Data_Output.InterWithZero{2, 1};
figure
histogram(A);
title(titles);



end