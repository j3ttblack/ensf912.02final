% Create the directory "label_images" if it doesn't exist
labels_folder = 'label_images';
if ~isfolder(labels_folder)
    mkdir(labels_folder);
end

% Iterate over each label in the 'labels' array
for i = 1:size(labels, 3)
    % Extract the i-th label from the 3D array
    currentLabel = labels(:, :, i);
    
    % Generate a filename for the current label (e.g., label1.png, label2.png, etc.)
    filename = fullfile(labels_folder, sprintf('label%d.png', i));
    
    % Convert the label to uint8 for image saving
    currentLabel_uint8 = uint8(currentLabel);
    
    % Write the current label to the labels folder as a PNG file
    imwrite(currentLabel_uint8, filename);
end
