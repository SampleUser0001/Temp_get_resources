#!/bin/sh   

DIR_DATE=`date +"%Y%m%d"`

# topのログを配置する用のディレクトリが無かったら作成する。
if [ ! -e ./top_logs/${DIR_DATE} ]; then 
  mkdir -p ./top_logs/${DIR_DATE}
fi

while [ true ]
do
    # topのログを取得する。
    FILE_DATE=`date +"%Y%m%d_%H%M%S"`
    top -b -n 1 > ./top_logs/${DIR_DATE}/top_${FILE_DATE}.txt
    sleep 1
done
