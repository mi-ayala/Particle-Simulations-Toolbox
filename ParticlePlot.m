function p = ParticlePlot(X0, varargin)

    [N,dim] = size(X0);

    if nargin == 2
        Title = varargin;
    else
        %Title = sprintf('N = %i', N);
        Title = [];
    end
   
    p = figure;
   
    if     dim == 1
    
            scatter(X0(:), zeros(length(X0), 1),125,'filled', ...
             'MarkerFaceAlpha',7/8, 'MarkerEdgeColor','k',...
             'MarkerFaceColor',[0 0.4470 0.7410] ); 
    
    elseif dim == 2
        
            scatter(X0(:,1),X0(:,2),125,'filled', ...
             'MarkerFaceAlpha',7/8, 'MarkerEdgeColor','k',...
             'MarkerFaceColor',[0 0.4470 0.7410] ); 
    
    elseif dim == 3
    
            scatter3(X0(:,1),X0(:,2),X0(:,3),125,'filled', ...
             'MarkerFaceAlpha',7/8, 'MarkerEdgeColor','k',...
             'MarkerFaceColor',[0 0.4470 0.7410] ); 

    end

    %%% Show axis
    %     set(gca, ...
    %       'Box'         , 'off'     , ...
    %       'TickDir'     , 'out'     , ...
    %       'TickLength'  , [.02 .02] , ...
    %       'XMinorTick'  , 'on'      , ...
    %       'YMinorTick'  , 'on'      , ...
    %       'YGrid'       , 'off'      , ...
    %       'XGrid'       , 'off'      , ...      
    %       'XColor'      , [.3 .3 .3], ...
    %       'YColor'      , [.3 .3 .3], ...
    %       'LineWidth'   , 1         );
    
    set(gca, ...
    'Box'         , 'off'     , ...
    'XMinorTick'  , 'off'      , ...
    'XTick'       , []      , ...
    'YMinorTick'  , 'off'      , ...
    'YTick'       , []      , ...
    'ZTick'       , []      , ...
    'YGrid'       , 'off'      , ...
    'XGrid'       , 'off'      , ...    
    'ZGrid'       , 'off'      , ... 
    'XColor'      , 'none', ...
    'ZColor'      , 'none', ...
    'YColor'      , 'none' );
    
    axis equal  
    
    % Add labels
    hTitle = title(Title);
    hXLabel = xlabel('x');
    hYLabel = ylabel('y');
    
    % Adjust font
    set(gca, 'FontName', 'Georgia')
    set([hTitle, hXLabel, hYLabel], 'FontName', 'Georgia')
    set([hXLabel, hYLabel], 'FontSize', 10)     
    set(hTitle, 'FontSize', 12, 'FontWeight' , 'bold','Color','#010206')
    
    set(gcf, 'InvertHardCopy','off')    

end

