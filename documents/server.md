# Command History

## イメージの作成
``` sh
% docker build -t golang-sample .
```

## コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server -p 8080:9000 -it golang-sample bash
```

## Initialize Go module (in コンテナ)
``` sh
$ go mod init github.com/muryakami/react-go
```

## サーバの起動 (in コンテナ)
``` sh
$ go run main.go
```

# Usage

## イメージの作成
``` sh
% docker build -t golang-sample .
```

## コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server -p 8080:9000 -it golang-sample bash
```

## サーバの起動 (in コンテナ)
``` sh
$ go run main.go
```

## HTTP リクエスト
```
% curl localhost:8080/api/ping
```
