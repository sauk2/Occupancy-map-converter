# Occupancy-map-converter
This project contains code to convert images to MATLAB occupancy maps.

## Usage
The ```.pgm``` image should be placed in the ```/images``` folder and the two parameters need to be set - ```resizeParam``` and ```occupancyParam```. The crop menu gives
the option to select a section of the image. Upon selection, right-click and select ```Crop Image``` option. The image is converted to occupancy map and saved as a 
workspace with ```map``` variable in ```/workspace``` folder.
