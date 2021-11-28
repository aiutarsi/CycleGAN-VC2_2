#!/bin/bash

test_obama="test_obama"
test_ja="test_ja"
data="data"
converted_sound="converted_sound"

if [ ! -e "${data}" ]; then
  echo "Error ${data} directory doesn't exist."
  exit 1
fi
if [ ! -e "${converted_sound}" ]; then
  echo "Error ${converted_sound} directory doesn't exist."
  exit 1
fi

echo "${data} and ${converted_sound} exist."

cd "${data}"

if [ ! -e "${test_obama}" ]; then  #data/test_obamaが存在しない場合
  mkdir "${test_obama}"
fi

if [ ! -e "${test_ja}" ]; then  #/data/test_jaが存在しない場合
  mkdir "${test_ja}"
fi

cd ../
cd "${converted_sound}"

if [ ! -e "${test_obama}" ]; then  #converted_sound/test_obamaが存在しない場合
  mkdir "${test_obama}"
fi

if [ ! -e "${test_ja}" ]; then  #/converted_sound/test_jaが存在しない場合
  mkdir "${test_ja}"
fi

cd ../

echo "test directory is OK."
