# ensf912.02final
Final project for ensf 619.02, depth estimation resnet comparison

Data and saved models not uploaded to github. On run, the code will generate a folder 'saved_models', and will save the generated resnet models into the folder. Will save 10 models: ResNet-18, -34, -50, -101, and -152, for training on both the label and depth sets. The code will save the model in the epoch with the lowest validation error.

The data must exist be housed as follows:

- ensf812.02final
    - data
        - depth_images
        - images
        - labels
     
where the depth_images are the images corresponding to the depth map, with the naming convention 'depth#.png', where the number # corresponds to the image number, being 1-1449. Similarly, the images house the RGB images, with the naming convention 'image#.png', and the labels house the labelled object detection images, with the naming convention 'label#.png'. 

The data can be downloaded from: https://cs.nyu.edu/~fergus/datasets/nyu_depth_v2.html#raw_parts, from the 'Labeled dataset (~2.8GB)' download link. The author provides a toolbox to handle data downloading, processing, and loading - none of these tools were downloaded or implemented.

The data was extracted from the matlab files using the created extract_depths, extract_images, and extract_labels files found in this repo, for extraction of depths, images, and labels, respectively. 

