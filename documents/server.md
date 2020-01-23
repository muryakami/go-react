# Command History

## イメージの作成
``` sh
% docker build --no-cache .
```

## コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server -p 5050:8080 -it [IMAGE] bash
```

## Initialize Go module (in コンテナ)
``` sh
# From the /app/server directory
$ go mod init github.com/muryakami/react-go
```

## サーバの起動 (in コンテナ)
``` sh
# From the /app/server directory
$ go run main.go
```

# Usage

## イメージの作成
``` sh
% docker build --no-cache -t golang-server .
```

## コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server -p 5050:8080 -it golang-server bash
```

## サーバの起動 (in コンテナ)
``` sh
# From the /app/server directory
$ go run main.go
```

## HTTP リクエスト
```
% curl localhost:5050/api/ping
```
