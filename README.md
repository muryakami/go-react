# Objective
- Go + React の Web Application を作成する
- ローカル環境を汚さないように出来る限り Docker 上で開発する
- 開発した Web Application を Heroku で公開する

# References
基本的には以下を参考にして開発する

- https://levelup.gitconnected.com/deploying-go-react-to-heroku-using-docker-9844bf075228
- https://medium.com/@deano.baker/deploying-go-react-to-heroku-using-docker-part-2-the-database-afaaaae66f81
- https://github.com/deandemo/react-go-heroku

上の記事を参考に他の人が作ったと思われる Project
- https://github.com/ogryzek/react-go-docker

# Docker 操作
Docker 操作に役立ちそうなコマンドを以下に記す

## コンテナ操作

### 作成
``` bash
% docker create -it [IMAGE]
```

### 起動
``` bash
% docker start [CONTAINER ID]
```

### 接続
``` bash
% docker exec -it [CONTAINER ID] bash
```

### 作成 & 起動 & 接続
``` bash
% docker run -it [IMAGE]
```

### 作成 & 起動 & 接続 & マウント
#### usage
``` bash:usage
% docker run -it -v [ホストディレクトリの絶対パス]:[コンテナの絶対パス] [IMAGE] [command]
```
#### e.g.
``` bash:e.g.
% docker run -it -v /Users/yuki/github.com/muryakami/go-react:/app golang-test bash
```

### 停止
``` bash
% docker stop [CONTAINER ID]
```

### 全削除
``` bash
% docker rm `docker ps -a -q`
```

## イメージ操作

### 作成
#### usage
``` bash:usage
% docker build -t [IMAGE(new)] .
```
#### e.g.
``` bash:e.g.
% docker build -t golang-test .
```

### 全削除
``` bash
% docker rmi `docker images -a -q`
```
