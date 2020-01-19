# Docker 操作
Docker 操作に役立ちそうなコマンドを以下に記す

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

### e.g.
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react:/app -p 8080:3000 -it golang-sample bash
```

### 停止
``` sh
% docker stop [CONTAINER ID]
```

### 全削除
``` sh
% docker rm `docker ps -a -q`
```

## イメージ操作

### 作成
#### usage
``` sh:usage
% docker build -t [IMAGE(new)] .
```
#### e.g.
``` sh:e.g.
% docker build -t golang-sample .
```

### 全削除
``` sh
% docker rmi `docker images -a -q`
```
