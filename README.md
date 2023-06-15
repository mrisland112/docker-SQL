# docker-SQL
### 建立 MYSQL 容器，並允許內部、外部連接
run 寫好的 docker compose YAML檔
```
docker compose up                                           #利用 docker compose 生成容器
docker exec -it docker_compose_python-mysql_db-1 /bin/bash  #在終端機進入容器
```

連線 MYSQL 容器內部 root 帳戶
```
mysql -uroot -p -A   #進入SQL root 帳戶(後續需要輸入 docker compose 檔案設的 passwords)
```

### 由本機 MYSQL workbench 測試外部連線至容器 MYSQL
在 MYSQL workbench 新增連線
![image](https://github.com/mrisland112/docker-SQL/assets/28065019/ab45f2c9-696d-421e-b6da-7672b55b7129)

### 填寫連線資訊

connection name 可以任意取
hostname 可以用 localhost / 127.0.0.1 (本機ip) 
port 為 docker compose 檔案設置的值
username 可以新增使用者或用 root
![image](https://github.com/mrisland112/docker-SQL/assets/28065019/74489fdc-ff89-4816-b923-9642b3a4b6c1)
![image](https://github.com/mrisland112/docker-SQL/assets/28065019/f1a14986-b4fd-4491-aedb-b7405f6ab288)

成功連接
![image](https://github.com/mrisland112/docker-SQL/assets/28065019/58fc956d-77ac-444f-82dc-181dcc02c902)

