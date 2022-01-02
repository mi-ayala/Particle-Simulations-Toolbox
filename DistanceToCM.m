function bin = DistanceToCM(X0, n)
    
    %%% Distances to the origin
    distance = sqrt(sum(X0.^2,2));
    [~,~,bin] = histcounts(distance,n);

end
