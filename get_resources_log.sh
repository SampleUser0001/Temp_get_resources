#!/bin/sh   

FILE_DATE=`date +"%Y%m%d_%H%M%S"`

# topのログを配置する用のディレクトリが無かったら作成する。
if [ ! -e ./top_logs ]; then 
  mkdir ./top_logs
fi
# topのログを取得する。
top -b -n 1 > ./top_logs/top_${FILE_DATE}.txt

# psのログを配置する用のディレクトリが無かったら作成する。
if [ ! -e ./ps_logs ]; then 
  mkdir ./ps_logs
fi
# psのログを取得する。
ps -ef > ./ps_logs/ps_${FILE_DATE}.txt

# oracle processのログの取得はRedmine参照。
