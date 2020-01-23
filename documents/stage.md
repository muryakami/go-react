# Command History

## イメージの作成
``` sh
% docker build --no-cache .
```

## ネットワークの作成
``` sh
% docker network create container-network
```

## イメージの確認
``` sh
% docker images
```

## サーバサイド
### コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server --network container-network -p 5050:8080 -it [IMAGE] bash
```

### サーバの起動 (in コンテナ)
``` sh
$ go run main.go
```

## HTTP リクエスト
```
% curl localhost:5050/api/ping
```

## クライアントサイド
### コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/client:/client --network container-network -p 5051:3000 -it [IMAGE] ash
```

### サーバの起動 (in コンテナ)
``` sh
$ yarn start
```

## HTTP リクエスト
```
% curl localhost:5051/
```
