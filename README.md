# Docker 操作
Docker 操作に役立ちそうなコマンドを以下に記す

## コンテナ操作

### 作成
```
% docker create -it [IMAGE]
```

### 起動
```
% docker start [CONTAINER ID]
```

### ssh
```
% docker exec -it [CONTAINER ID] bash
```

### 作成 & 起動 & ssh
```
% docker run -it [IMAGE]
```

### 停止
```
% docker stop [CONTAINER ID]
```

### 全削除
```
% docker rm `docker ps -a -q`
```

## イメージ操作

### 作成
```
% docker build -t [IMAGE(new)] .
```

### 全削除
```
% docker rmi `docker images -a -q`
```
