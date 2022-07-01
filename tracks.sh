#!/bin/bash
sources_list=(
    data/2022_FukushimaRTF_HumanActionDataset_20220628/4K_mp4/パターンB/
    data/2022_FukushimaRTF_HumanActionDataset_20220628/4K_mp4/パターンC/
    data/2022_FukushimaRTF_HumanActionDataset_20220628/4K_mp4/パターンD/
    data/2022_FukushimaRTF_HumanActionDataset_20220628/4K_mp4/パターンE/
    data/2022_FukushimaRTF_HumanActionDataset_20220628/4K_mp4/パターンF/
    data/2022_FukushimaRTF_HumanActionDataset_20220628/4K_mp4/5月11日無人-日常/
)

for sources in "${sources_list[@]}"
do
    ./track.sh $sources
done
