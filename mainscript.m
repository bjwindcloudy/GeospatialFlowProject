FuzzyWeights = ModifiedLLSM(8, FuzzyMatrix);
celldisp(FuzzyWeights)
CrispWeights = zeros(1,n);
for i = 1:n
    x = 0:0.000005:1;

    mf = trimf(x,FuzzyWeights{1,i});
    CrispWeights(1,i) = defuzz(x,mf,'centroid');
end                                   
NormalizedCrispWeights{z,1} = CrispWeights/sum(CrispWeights);
