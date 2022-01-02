
function X0 = CenterOfMass(X0)

    N = length(X0(:,1));

    CMass = (1/N).*sum(X0, 1);

    X0 = X0 - CMass;

end