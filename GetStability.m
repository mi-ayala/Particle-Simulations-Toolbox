function  GetStability(A, varargin)
%  ==================================================
%  GetStability
%  ==================================================
%  DESCRIPTION Gives positive, negative and zero 
%  eigenvalues of matrix A up to a tolerance (tol).
%  It uses MATLAB's eig function.
%  __________________________________________________
%  INPUT
%  A   .. matrix
%  tol .. tolerance for zero eigenvalues 
%  __________________________________________________
%  OUTPUT Prints positive, negative and zero (up to a
%         tolerance tol).
%  __________________________________________________
%  MATLAB 9.11.0.1809720 (R2021b) Update 1
%  Miguel Ayala, 20-Jan-2022.
%  ==================================================

    %%% How close to zero are the zero eigenvalues?
    if isempty(varargin) 
     tol = 1e-8;
    else
     tol = varargin{1};
    end 
    
    %%% Eig 
    [V,D] = eig(A);
    eigenvalues = diag(D);


    if isreal(eigenvalues)

    %%% Zero eigenvalues
    kernel_index = abs(eigenvalues) < tol;
    zero_eigenvalues = length(eigenvalues(kernel_index)); 

    %%% Positive and negative
    eigenvalues(kernel_index) = [];
    positive = eigenvalues > 0;
    negative = eigenvalues < 0;

   
    %%% Printed output
    fprintf([ 
                        '                 %i Zero eigenvalues with tol = %g,\n' ...
                        '                 %i Positive eigenvalues,\n' ...
                        '                 %i Negative eigenvalues. \n' ...         
                        ], [zero_eigenvalues, tol, length(eigenvalues(positive)), length(eigenvalues(negative))]) 

    else
        fprintf('There are complex eigenvalues') 
    end    

end  

