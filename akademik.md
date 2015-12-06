# Statistics

- https://en.wikipedia.org/wiki/F1_score, http://blog.tryolabs.com/2013/03/25/why-accuracy-alone-bad-measure-classification-tasks-and-what-we-can-do-about-it/

# Hardware

- Lily (820$): <https://www.lily.camera/>
- ArDrone (620$): <http://ardrone2.parrot.com/>
- Google CardBoar: <https://www.google.com/intl/tr_ALL/get/cardboard/get-cardboard/>
- Prijector: Wireless Presentation Device: <https://prijector.com/>

# Blog, Tools

- http://colah.github.io/
- https://github.com/google/skflow
- http://www.tensorflow.org/, [manuscript](http://download.tensorflow.org/paper/whitepaper2015.pdf), [blog girdisi](http://googleresearch.blogspot.com.tr/2015/11/tensorflow-googles-latest-machine_9.html)
- http://deeplearning.net/
- https://github.com/Samsung/veles
- https://github.com/hangtwenty/dive-into-machine-learning
- https://github.com/Microsoft/DMTK
- https://github.com/dmlc/mxnet
- Open Machine Intelligence Framework: <https://github.com/autumnai/leaf>, [Examples](https://github.com/autumnai/leaf-examples)
- ConvNetJS: Deep Learning in your browser: <http://cs.stanford.edu/people/karpathy/convnetjs/>
- Image processing, Neural Network, ImageNet: <http://karpathy.github.io/>

- https://www.reddit.com/r/MachineLearning/
- <http://www.datascienceweekly.org/data-scientist-interviews>
- http://www.wired.com/category/science
- https://medium.com/search?q=science

# Etc
- OCR: https://github.com/madmaze/pytesseract

# Image Processing & Matlab

## Image Processing
- Content aware image cropping: <https://github.com/jwagner/smartcrop.js>
- Seam carving: <https://www.youtube.com/watch?v=vIFCV2spKtg>

## DIP

- Interactively measure features in images: <http://blogs.mathworks.com/pick/2013/07/12/interactively-measure-features-in-images/>
- Colorspaces out the Wazoo!: <http://blogs.mathworks.com/pick/2013/05/10/colorspaces-out-the-wazoo/>
- Converting Images from Grayscale to Color: <http://blogs.mathworks.com/pick/2012/11/25/converting-images-from-grayscale-to-color/>

## General

- Manage the (Automatic) Naming of Your Figure Windows: <http://blogs.mathworks.com/pick/2013/04/19/manage-the-automatic-naming-of-your-figure-windows/>
- Figure margins, subplot spacings, and more…: <http://blogs.mathworks.com/pick/2012/12/21/figure-margins-subplot-spacings-and-more/>
- plotyy: <http://blogs.mathworks.com/loren/2013/03/27/multiple-y-axes/>
- regresyon: <http://blogs.mathworks.com/loren/2012/03/16/new-regression-capabilities-in-release-2012a/>

## GUI

- <http://blogs.mathworks.com/loren/2014/01/15/cool-graphics-and-graphical-user-interfaces/>

## Kurulum Ubuntu

- seyyah@bil
- apt lsb lsb-core

```sh
# MATLAB FLEXnet Network License Manager Daemon
#
#       For boot-time initialization on Linux
#
# Steps: (as root)
#
#    1. If the following links do not exist create them:
#
#       ln -s $MATLAB/etc/lmboot /etc/lmboot_TMW
#       ln -s $MATLAB/etc/lmdown /etc/lmdown_TMW
#
#    2. Replace CHANGE_USER_NAME argument to the lmboot_TMW
#       command below by a real usename OTHER than root!
#
#    3. Follow the instructions in the Installation Guide for
#       setting up the boot scripts.
```

- cp matlabroot/etc/flexnet.boot.linux /etc/init.d/flexnet

- apt matlab-support

## Çalıştırırken

- /etc/init.d/flexnet start
- LC_ALL=C matlab

1. http://www.mathworks.com/matlabcentral/answers/97361-why-am-i-unable-to-start-the-flexnet-license-manager-v11-8-or-higher-on-debian-based-linux-distribut

# Diğer
- Python: camera calibration vs <https://github.com/erget/StereoVision>, <http://erget.github.io/StereoVision/>
