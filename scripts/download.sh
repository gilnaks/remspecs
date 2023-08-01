#!/usr/bin/env bash
FILE=$1

#celeba dataset
# @inproceedings{liu2015faceattributes,
# title = {Deep Learning Face Attributes in the Wild},
# author = {Liu, Ziwei and Luo, Ping and Wang, Xiaogang and Tang, Xiaoou},
# booktitle = {Proceedings of International Conference on Computer Vision (ICCV)},
# month = {December},
# year = {2015}
#}
if [ $FILE == "celeba_male2female" ]; then
    URL=https://cgm.technion.ac.il/Computer-Graphics-Multimedia/CouncilGAN/DataSet/celeba_male2female.zip?dl=0
    ZIP_FILE=./datasets/celeba_male2female.zip
    mkdir -p ./datasets/
    wget -N $URL -O $ZIP_FILE
    unzip $ZIP_FILE -d ./datasets/
    rm $ZIP_FILE

elif [ $FILE == "celeba_glasses_removal" ]; then
    URL=https://cgm.technion.ac.il/Computer-Graphics-Multimedia/CouncilGAN/DataSet/celeba_glasses.zip?dl=0
    ZIP_FILE=./datasets/celeba_glasses.zip
    mkdir -p ./datasets/
    wget -N $URL -O $ZIP_FILE
    unzip $ZIP_FILE -d ./datasets/
    rm $ZIP_FILE

#  selfie2anime dataset used in https://github.com/taki0112/UGATIT
#  title={U-GAT-IT: Unsupervised Generative Attentional Networks with Adaptive Layer-Instance Normalization for Image-to-Image Translation},
#  author={Kim, Junho and Kim, Minjae and Kang, Hyeonwoo and Lee, Kwanghee},
#  journal={arXiv preprint arXiv:1907.10830},
#  year={2019}
elif [ $FILE == "U_GAT_IT_selfie2anime" ]; then
  URL=https://www.dropbox.com/s/9lz6gwwwyyxpdnn/selfie2anime.zip?dl=0
  ZIP_FILE=./datasets/selfie2anime.zip
  mkdir -p ./datasets/
  wget -N $URL -O $ZIP_FILE
  unzip $ZIP_FILE -d ./datasets/
  rm $ZIP_FILE

elif [ $FILE == "pretrain_male_to_female" ]; then
    URL="https://onedrive.live.com/download?cid=552378614E6BA583&resid=552378614E6BA583%2119549&authkey=ANzlMZsBQy77urU"
    ZIP_FILE=./pretrain/pretrain_m2f.zip

    mkdir -p ./pretrain/
    wget -N $URL -O $ZIP_FILE
    unzip $ZIP_FILE -d ./pretrain/
    rm $ZIP_FILE

elif [ $FILE == "pretrain_glasses_removal" ]; then
    URL="https://aspecs.s3.ap-southeast-1.amazonaws.com/pretrain_glasses_removal.zip?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEMaDmFwLXNvdXRoZWFzdC0xIkcwRQIgTkfpHg1cmuhS3LOellnoNIAn8U1UZDQAfUwjljMwlFsCIQDM4hVYfb6l058mnJV9%2Bho3eRPVC5bqV8kR%2FX6DGOLWLCrtAgjc%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDA5Nzk5NTk3MTgwNSIMiI6ZTRfb2oxMiTl7KsECR9PeBzFNZlzcPUcpXGQDObFhLZnJFD6C8vH%2FfJwUvRa8xzNtH4Ehg3sGq%2B5H6bHGDbfRQmqKdNVe42%2FnEUGLlW%2BOKZLe88k%2BWFOmMjwUejXBpsihv4f2L2QR0d0kDIumVEdiwOxlsVG2W21bf%2BttbUX84nDxprZ5tYR4hW6m6N5eScZj%2BM2gInGsCahLRP7pAUdghXuxirHUPsqLjIfsVSDQtLL%2F5gpm0pKni%2F88wyZPHGFk0CqnA8wLcpddlAoxfnOTKo%2FmPwK0G6uenjBe2DpwKlGpJTc6G4DBiGHi4n%2BnVPWKubcWLEEzPEANaJcT04l3stoAxSQ8pb8BJPpaZT6v5RCqxz5yd7oxOp1IeBGmvSfXHngfZnhf%2BnZ6uhUx3LqiukqCzJnHhG%2B6Kf%2Bd30y2wyXZubgszvFSHb81E2v8MIqfpaYGOrMCP2sILmDjlnRkpbuF0WEmz6V9%2B5eBx62eBsiKq7IOXh9luA25Dc80l6xDN1YuUD71AFxEVwZ4zOm5FhZBpEiXFIuPBZ14XcjfqLHPFVnBuDg8QekC%2BG4BQr7fV93D52ZM%2FYPDbMcDCGtEgH7ILOzT230N4uPdyx%2Bd2lfM8ys6Qw%2Fwer%2FbwEHIdo2EExyubIo4ElSyxsPJlYHI%2BqjUdLkfwUEkjaOgEUf6qKPk4tLb3c%2Fmq%2BQb2EYtwTm1fRugh3kHO7N6%2FP6u6knXSm%2B1kWVVcRaJpUwWsSH8xkhnEKln3CNS%2FatDR4hhu%2BH9Zyz7%2Bf8ym216%2FuVB%2BpomVZ5dzilM2ughk3sbiOnzc3M%2Bm8p1%2BJVU3TNUbytmaGqjE%2FlyufYYigQI5wYLFfF6XY9wmKW89ihMlA%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230801T183215Z&X-Amz-SignedHeaders=host&X-Amz-Expires=43200&X-Amz-Credential=ASIARNUID3TO3H4BDHON%2F20230801%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Signature=fb093af558ebea6af633ec0dc426b1cab54ce3e87af6e83c487dbbc306a71d46"
    ZIP_FILE=./pretrain/pretrain_glasses_removal.zip
    mkdir -p ./pretrain/
    wget -N $URL -O $ZIP_FILE
    unzip $ZIP_FILE -d ./pretrain/
    rm $ZIP_FILE

elif [ $FILE == "pretrain_selfie_to_anime" ]; then
    URL="https://onedrive.live.com/download?cid=552378614E6BA583&resid=552378614E6BA583%2119566&authkey=AIcUuinR_eQPp1c"
    ZIP_FILE=./pretrain/pretrain_anime.zip
    mkdir -p ./pretrain/
    wget -N $URL -O $ZIP_FILE
    unzip $ZIP_FILE -d ./pretrain/
    rm $ZIP_FILE


else
    echo "Available arguments are celeba_male2female, celeba_glasses_removal, U_GAT_IT_selfie2anime, pretrain_male_to_female, pretrain_glasses_removal, pretrain_selfie_to_anime."
    exit 1

fi
