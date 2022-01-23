# data-stems-joe
## Computer vision data for object detection (potato stems)

This repo is a set of n = 163 potato plant images with bounding boxes in xywh format for each plant stem.

`all-images` contains the 640 x 480 images in .png format.
`aaimages-bb` contains a single csv file with the bounding box coordinates.
`allimages-bb-yolo` contains n = 163 csv files with bounding box data in Yolov5 format.

The R script `allimages.R` was created to convert the raw bb data to yolov5 format.

