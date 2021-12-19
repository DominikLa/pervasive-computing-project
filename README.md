# Pervasive computing final project, group 16

### Introduction

This project is focused on controlling M-bed base robot with hand gestures, that are recognized in real time in Matlab using pretrained Neural Network model


## Create dataset

call `createTrainingImagesToCsv(1000, 1, "forward.csv")` to create 1000 sample images with target 1 and write them to forward.csv file

after you have called createTrainingImagesToCsv for all targets that you want to support (forward, stop, left, right) call `createFinalTrainingData` to create finalData.csv file

## Train Neural Network model

call ```net = trainmodel("finalData.csv")``` to train and get a neural network model to our `net` variable

you can save the pre-trained model with ```save net```

## Preparing the robot
you need to upload `main.cpp` to m-bed robot, before starting MATLAB application

## Start the application
you can load the neural network pre-trained model with ```load net``` and call ```startRecognition(net)``` to start the application. Please make sure that you have you m-bed robot connected, we used 'COM5' as a serial port, if you have other port, change it in `startRecognition.m`
