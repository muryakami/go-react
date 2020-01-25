# Command History

## ignore ファイルの指定
``` sh
% echo '**/node_modules' > .dockerignore
```

## イメージの作成
``` sh
% docker build --no-cache .
```

## ネットワークの確認
``` sh
% docker network inspect bridge
```

## イメージの確認
``` sh
% docker images
```

## サーバサイド
### コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server -p 8080:8080 -it [IMAGE] bash
```

### サーバの起動 (in コンテナ)
``` sh
# From the /app/server directory
$ go run main.go
```

## HTTP リクエスト
``` sh
% curl localhost:8080/api/ping
```

## クライアントサイド
### コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/client:/client -p 3000:3000 -it [IMAGE] ash
```

### package.json の proxy を変更
``` json
"proxy": "http://172.17.0.3:8080"
```

※ IP アドレスは以下のコマンドで確認可能
``` sh
# サーバサイドのコンテナで実行
$ hostname -i
```

### サーバの起動 (in コンテナ)
``` sh
# From the /client directory
$ npm start
```

## HTTP リクエスト
``` sh
% curl localhost:3000/
```

# Usage

### package.json の proxy を変更
``` json
"proxy": "http://localhost:8080"
```

## イメージの作成
``` sh
% docker build -t golang-heroku .
```

## コンテナの作成 & 起動 & 接続
``` sh
% docker run -p 3000:8080 -d golang-heroku
```

## HTTP リクエスト
``` sh
% curl localhost:3000
```
