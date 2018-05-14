function  StatIntersec= IntersecWithZero(Data)
M1=length(Data);
index=1;
StatIntersec={2,2};
IntersecMass=vectorsobitiy(Data,M1,index);
Expect_Val_Inter=mean(IntersecMass);
StatIntersec{1,1}='IntersecWithZero';
StatIntersec{1,2}='ExpectedVAlue';
StatIntersec{2,1}=IntersecMass;
StatIntersec{2,2}=Expect_Val_Inter;
end