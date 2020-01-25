# Docker 操作
Docker 操作に役立ちそうなコマンドを以下に記す

## イメージ操作

### 作成
``` sh
% docker build -t [IMAGE(new)] .
```

### 確認
``` sh
% docker images
```

### 削除
``` sh
% docker rmi [CONTAINER ID]
```

### 全削除
``` sh
% docker rmi `docker images -q`
```

## ネットワーク操作

### 作成
``` sh
% docker network create [NAME(new)]
```

### 確認
``` sh
% docker network ls
```

### 詳細
```
# docker network inspect [NAME]
```

### 削除
``` sh
% docker network rm [NAME]
```

## コンテナ操作

### 作成
``` sh
% docker create -it [IMAGE]
```

### 起動
``` sh
% docker start [CONTAINER ID]
```

### 接続
``` sh
% docker exec -it [CONTAINER ID] bash
```

### 作成 & 起動 & 接続
``` sh
% docker run -it [IMAGE]
```

### マウント
``` sh
% docker run -v [ホストディレクトリの絶対パス]:[コンテナの絶対パス] [IMAGE] [command]
```

### ポートフォワード
``` sh
% docker run -p [ホストディレクトリのポート番号]:[コンテナのポート番号] [IMAGE] [command]
```

### ネットワーク指定
``` sh
% docker run --network [NAME] [IMAGE] [command]
```

### 確認
``` sh
% docker ps
```

### 停止
``` sh
% docker stop [CONTAINER ID]
```

### 削除
``` sh
% docker rm [CONTAINER ID]
```

### 全削除
``` sh
% docker rm `docker ps -a -q`
```
