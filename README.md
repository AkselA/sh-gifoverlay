# gifoverlay

#### Overlay graphics on an animated GIF

### Install

1. Clone this repository
2. Run `install.sh` in a command terminal.  
This will make `gifoverlay.sh` executable and copy it to `/usr/local/bin/gifoverlay`.


### Usage
Inputs are one animated GIF and one image, output is one animated GIF with the same characteristics as the input GIF, except for the overlayed image. The GIF and image will be aligned at the top right corner, and cropped to the size of the GIF if needed.  
If no output name is given, one will be generated automatically from the two inputs.

```bash
gifoverlay animation.gif overlay.png animation2.gif

gifoverlay animation.gif overlay.png
# this will give 'animation-overlay.gif'
```

### Depends
ImageMagick 6.9+  
Gifsicle 1.9+

<sub>_Tested on OS X 10.11.6 and Bash 3.2.57_</sub>


