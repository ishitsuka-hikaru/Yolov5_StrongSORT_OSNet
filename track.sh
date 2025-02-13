#!/bin/bash
sources=$1
height=2160
width=3840
yolo_weights=weights/yolov5x6.pt
strong_sort_weights=weights/osnet_ain_x1_0_msmt17.pt
classes="0"  # 0: person, 1: bicycle, 2: car, ... (e.g., COCO128)
name=$(basename ${yolo_weights%.*})-$(basename ${strong_sort_weights%.*})-${width}x${height}
device=0,1

for source in $sources/*.mp4
do
    python track.py \
    	   --source $source \
    	   --img $height $width \
    	   --yolo-weights $yolo_weights \
    	   --strong-sort-weights $strong_sort_weights \
    	   --classes $classes \
    	   --save-txt \
    	   --save-vid \
	   --save-crop \
    	   --name $name \
    	   --device $device \
    	   --exist-ok
done
