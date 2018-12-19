#! /bin/bash
s=$1 # either test-dev test-challenge or trainval
wget https://data.vision.ee.ethz.ch/csergi/share/davis/DAVIS-2017-$s-Full-Resolution.zip .
unzip DAVIS-2017-$s-Full-Resolution.zip
mkdir $s
mv DAVIS/JPEGImages/Full-Resolution/* $s
rm -rf DAVIS DAVIS-2017-$s-Full-Resolution.zip
