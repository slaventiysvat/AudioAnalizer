function [mass_corr mass_lag]= ctrl_correlations(mass1,mass2)
mass_corr=[];
mass_lag=[];
for i=1:1:length(mass1(:,1))
    A=mass1(i,:);
    B=mass2(i,:);
%     A=A(1:end-1);
%     B=B(1:end-1);
    [acor,lag] = xcorr(A,B);
    mass_corr(i,:)=acor;
    mass_lag(i,:)=lag;

end