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
    URL="https://aspecs.s3.ap-southeast-1.amazonaws.com/pretrain_glasses_removal.zip?response-content-disposition=inline&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEDQaDmFwLXNvdXRoZWFzdC0xIkcwRQIgP0iP%2BVp4Xzn7P2KKg8uO0qStIEheCxfY9GwMz5SCo9ICIQD1QYa9yMZ2jk9s%2F5xVDVECgrpM0FEOYobC1r5tP7pEgCrtAgjN%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDA5Nzk5NTk3MTgwNSIMlINwpF95QL3UW3rDKsECjR78pgp7gFZIzlKHS68iHGSZAyLqDY5rxjGOb3aZiBaerEWw3iYWZtt6Pfj4LkU0P9LfXvZqKY3iBybJsIeBBoIrI9IZ9Z7km8M7wLqONF57W6xrDNPPUnLYbTzHMKTBaEIYMWr59VxzcCxNCrDl6ohCeE4fKJEX2KtfbSTKv%2F6vI%2B%2B0qPn8o9DnZ4INmp6PldpDsEpQjoigB8An27JjfmRR8EbfeSsro1yYnPckTDL%2FfQqpJUWOPT0iwL82v33vMv1FbI9d13dji7taqnglxUBs%2FYdA3PF3E8DtrOHV6Mvzdlpono%2FJDKudAq9qgs0m3P9D05bMYe9pVArgzVNsXqmF8V9aEfASLVPfm6lU8dqy%2Fz8631VSUSwlTeIOxoytoFEDG2MgIlbTh66U%2F9G2KlHtSXfMOP5ennxqIStz5sfSMNeAoqYGOrMCQtXizvC6oluPvaCa4Dt29csF3ApAz9Y1gUt%2BfIq1lTLw%2BhbumsN1SF0OF19lEjCbbCjQ7N7PpU9Buv5cDpJg0kiQHrqucYtqiRS1uoKqb6Q%2FoIyNwi%2BujkrQp61XOnx%2FyW7rpQIdayDSXex9gPRmPRzMxA5zWwtpjxW9ncWNig7zqs5z7z2d%2F5k7b%2BcXSRyPtRT8FcpsYzcNbuLbje88YSu%2FN25ewjNshyyBva1GT7AwEDXCJ4aIhV3NN%2BI9lkANLcPYLi6%2FpZn%2BtapEuk7DK8OS%2BXuMYAgwc9NVO9JhGJ7ZZkVqjuv9pD5YBehF%2ByfFBl4paccQBFKRKypw0PdR1vTxf1RcHiN4KvLbEGvlPe3%2BhegP9wCS7Elcf%2BLG1csOYby23AYF8amIFbDWKXsOun7Xtg%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230801T153315Z&X-Amz-SignedHeaders=host&X-Amz-Expires=43200&X-Amz-Credential=ASIARNUID3TOQBI6IQ4P%2F20230801%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Signature=8ec3987253ed779304f3ae6c1ea8be2130c98a483734d246a4e7f6eaa81eb95a"
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
