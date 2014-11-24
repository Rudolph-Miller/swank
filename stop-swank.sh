kill -9 `ps -ef | grep swank | grep -v grep | awk '{print $2}'`
