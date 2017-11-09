### Supplementary Functions

Below you can find the description of some of the supplementary functions that are also provided with the code.

* **vis_stack_of_loc.m** - is used to visualize the results of the detector

```coffeescript
Requirements:
    The following variables should be pre-loaded in the MATLAB workspace
    [Iroi]              # Intensity Matrix that represents the video file
                        # it should have the following dimensions: HxWxT
    [stack_of_loc]      # the file that is generated by the detector
    
Parameters:
    [Iroi]              # The HxWxT Intensity Matrix that represents the video
    [stack_of_loc]      # the file that is generated by the detector
    [thresh]            # threshold that is used to consider detection as a positive
    [st]                # starting frame of the video
    [inter]             # interval of visualization 
                        # -- e.g. if set to '2', then each second frame is visualized
    [save_flag]         # if set to '1' then 
                        # -- frames with detection are saved to the './temp/ims' folder.
                        # -- detection are saved to './temp/_detections_from_vsl.txt'
                        # if set to '0' detections are just visualized as MATLAB 
                        # figures at run time
Run:
    vis_stack_of_loc(<Iroi>,<stack_of_loc>,<thresh>,[st],[inter],[save_flag])
Example:
    vis_stack_of_loc(Iroi,stack_of_loc,0.8,1,1,1)
```
<span style="color:red">Note</span>: 
    the detector should be already finished before running this function, or at least the file `stack_of_loc` should be generated for some of the frames.
    
* **motion_from_im_feature.m** - image alignment with SURF features.

```coffeescript
Requirements:
    MATLAB Computer Vision toolbox
Parameters:
    [original]          # input template image 
    [distorted]         # input image that need to be converted to match the template
    [show_flag]         # if set to '1' then intermediate results are shown
                        # should be set to '0' otherwise
Output:
    rec                 # projected image
    tmatr               # transformation matrix
Run:
    [<rec>, <tmatr>] = motion_from_im_feature(<original>, <distorted>, [show_flag])
```
The code was adopted from the MATLAB website [https://ch.mathworks.com/help/images/examples/find-image-rotation-and-scale-using-automated-feature-matching.html](http://10.90.43.16:8888/tree/cvlabdata1/cvlab/forArtem/third_party/code_DA16/code), where you can also find a better explanation.

* **gaussSmooth.m** - image smoothing [Piotr Dollar's MATLAB toolbox](https://pdollar.github.io/toolbox/). 

Added here to avoid downloading the whole toolbox. Please refer to [https://pdollar.github.io/toolbox/](https://pdollar.github.io/toolbox/) for license and a more detailed explanation on the terms of use.

