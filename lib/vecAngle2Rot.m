function [R]=vecAngle2Rot(theta,w)

% function [R]=vecAngle2Rot(theta,w)
% ------------------------------------------------------------------
% 
%
% See also: 
% * https://en.wikipedia.org/wiki/Euler%E2%80%93Rodrigues_formula
% * Page 15, Eq. 1.76 in: Mikhail Itskov, "Tensor Algebra and Tensor
% Analysis for Engineers", 3rd edition, 
% 
% 2021/07/14 KMM Added comments
% ------------------------------------------------------------------

%%

W=crossProdMat(vecnormalize(w));
R=eye(3,3)+W*sin(theta)+W^2*(1-cos(theta)); 
 
%% 
% _*GIBBON footer text*_ 
% 
% License: <https://github.com/gibbonCode/GIBBON/blob/master/LICENSE>
% 
% GIBBON: The Geometry and Image-based Bioengineering add-On. A toolbox for
% image segmentation, image-based modeling, meshing, and finite element
% analysis.
% 
% Copyright (C) 2006-2023 Kevin Mattheus Moerman and the GIBBON contributors
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
