#!/bin/bash

declare -a style_values=("1e1" "1e2" "1e3" "1e4")
declare -a content_values=("1e0" "1e1" "1e2" "1e3")

STYLE_IMG=$1
TEST_IMG=$2
OUT_DIR=$3

for style in "${style_values[@]}"
do
    for content in "${content_values[@]}"
    do
        target_dir=$OUT_DIR/"style=${style}_content=${content}"
        ./run_slow.sh $target_dir $STYLE_IMG $TEST_IMG $content $style
    done
done

