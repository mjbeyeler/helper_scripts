function [RGB] = get_rgb(image,vessel_positions)

% vessel_positions = int32(vessel_positions);

% FOR LOOPS ARE SLOW
% for i=1:size(vessel_positions,1)
%     RGB(i,1)=image(vessel_positions(i,1),...
%                    vessel_positions(i,2),...
%                    1);
%     RGB(i,2)=image(vessel_positions(i,1),...
%                    vessel_positions(i,2),...
%                    2);
%     RGB(i,3)=image(vessel_positions(i,1),...
%                    vessel_positions(i,2),...
%                    3);
% end
RGB = [image(sub2ind(size(image),vessel_positions(:,1),vessel_positions(:,2),ones(length(vessel_positions),1)*1))...
    image(sub2ind(size(image),vessel_positions(:,1),vessel_positions(:,2),ones(length(vessel_positions),1)*2))...
    image(sub2ind(size(image),vessel_positions(:,1),vessel_positions(:,2),ones(length(vessel_positions),1)*3))];


end