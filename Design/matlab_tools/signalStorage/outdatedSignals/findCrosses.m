function [ indices fractions  ] = findCrosses( yvals, threshold )
%function [ indices fractions  ] = findCrosses( yvals, threshold )
%
% find the indices where the yvals vector crosses the threshold,
%    ( (1-fractions(i))*yvals(i) + fractions(i) yvals(i+1) == threshold )

  indices   = [];
  fractions = [];

  for i=1:length(yvals)-1
    if ( yvals(i) <= threshold && yvals(i+1) > threshold ) || ...
       ( yvals(i) >= threshold && yvals(i+1) < threshold )
      indices(end+1)=i;
      fractions(end+1) = (threshold - yvals(i))/(yvals(i+1)-yvals(i));
    end
  end

 
  
end
    
