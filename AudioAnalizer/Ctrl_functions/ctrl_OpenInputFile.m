function     [AudioInfo,DataSiglnal]=ctrl_OpenInputFile(filename)
%function controller. 
%Autor Starokozhev S.V. 24.02.18
%this functions use for opening and getting data of signal
info = audioinfo(filename);%here we get data of signal and write in structure

AudioInfo.NameOfFile = info.Filename;

AudioInfo.Channels = info.NumChannels;

AudioInfo.SampleRate = info.SampleRate;

AudioInfo.TotalSamples = info.TotalSamples;

AudioInfo.Duration = info.Duration;

% AudioInfo.BitsPerSample = info.BitsPerSample;

[DataSiglnal] = audioread(filename);%in this step us need write data of signal in array

end