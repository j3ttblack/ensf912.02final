% Create a folder named "export_images" if it doesn't exist
exportFolder = 'export_images';
if ~isfolder(exportFolder)
    mkdir(exportFolder);
end

% Iterate over each image in the 4-D array
for i = 1:size(images, 4)
    % Extract the i-th image from the 4-D array
    currentImage = images(:,:,:,i);
    
    % Generate a filename for the current image (e.g., image1.jpg, image2.jpg, etc.)
    filename = fullfile(exportFolder, sprintf('image%d.jpg', i));
    
    % Write the current image to the export folder as a JPEG file
    imwrite(currentImage, filename);
end
