# Statistics

- https://en.wikipedia.org/wiki/F1_score, http://blog.tryolabs.com/2013/03/25/why-accuracy-alone-bad-measure-classification-tasks-and-what-we-can-do-about-it/

# Hardware

- Lily (820$): <https://www.lily.camera/>
- ArDrone (620$): <http://ardrone2.parrot.com/>
- Google CardBoar: <https://www.google.com/intl/tr_ALL/get/cardboard/get-cardboard/>
- Prijector: Wireless Presentation Device: <https://prijector.com/>

# Blog, Tools

- http://blogs.mathworks.com/steve/
- http://colah.github.io/
- http://vision.princeton.edu/research.html

Deep Learning,
- [ ] Face recognition with deep neural networks: <http://cmusatyalab.github.io/openface/>, <https://github.com/cmusatyalab/openface>
- Caffe: a fast open framework for deep learning: <https://github.com/BVLC/caffe>, <http://caffe.berkeleyvision.org>, [Demo](http://demo.caffe.berkeleyvision.org/classify_url?imageurl=http%3A%2F%2Fi.telegraph.co.uk%2Fmultimedia%2Farchive%2F02351%2Fcross-eyed-cat_2351472k.jpg>
![](http://i.imgur.com/kmdJJRH.png)
- Recurrent Neural Network captions your images: <https://github.com/karpathy/neuraltalk2>
![](https://camo.githubusercontent.com/684a313b08ebab8d1d0aec023e84ba59d57e8cdc/68747470733a2f2f7261772e6769746875622e636f6d2f6b617270617468792f6e657572616c74616c6b322f6d61737465722f7669732f7465617365722e6a706567)
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
- A machine learning package built for humans: <https://github.com/airbnb/airflow>, <http://airbnb.github.io/aerosolve/>
- https://www.reddit.com/r/MachineLearning/
- <http://www.datascienceweekly.org/data-scientist-interviews>
- http://www.wired.com/category/science
- https://medium.com/search?q=science

General learning,
- Anthelion is a plugin for Apache Nutch to crawl semantic annotations within HTML pages: <https://labs.yahoo.com/publications/6702/focused-crawling-structured-data>, <https://github.com/yahoo/anthelion>

# Kinect
- Object Detection: <https://github.com/marceljuenemann/kinect-object-detection>

# Etc
- OCR: https://github.com/madmaze/pytesseract
- Computer “Vision” for the Visually Impaired: I have a dream: <https://medium.com/@karim_ouda/computer-vision-for-the-visually-impaired-i-have-a-dream-7eaee112aeb9#.6pew7gu41>

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
