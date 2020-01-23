# Command History

## イメージの作成
``` sh
% docker build --no-cache .
```

## ネットワークの作成
``` sh
% docker network create go-react
```

## イメージの確認
``` sh
% docker images
```

## サーバサイド
### コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server --net=go-react -p 5050:8080 -it [IMAGE] bash
```

### サーバの起動 (in コンテナ)
``` sh
# From the /app/server directory
$ go run main.go
```

## HTTP リクエスト
```
% curl localhost:5050/api/ping
```

## クライアントサイド
### コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/client:/client --net=go-react -p 5051:3000 -it [IMAGE] ash
```

### サーバの起動 (in コンテナ)
``` sh
# From the /client directory
$ yarn start
```

## HTTP リクエスト
```
% curl localhost:5051/
```
