% Create the directory "depth_images" if it doesn't exist
depths_folder = 'depth_images';
if ~isfolder(depths_folder)
    mkdir(depths_folder);
end

% Iterate over each label in the 'depths' array
for i = 1:size(depths, 3)
    % Extract the i-th depth from the 3D array
    currentDepth = depths(:, :, i);
    
    % Generate a filename for the current depth (e.g., depth1.png, depth2.png, etc.)
    filename = fullfile(depths_folder, sprintf('depth%d.png', i));
    
    % Convert the depth to uint8 for image saving
    currentDepth_uint8 = uint8(currentDepth);
    
    % Write the current depth to the depths folder as a PNG file
    imwrite(currentDepth_uint8, filename);
end
