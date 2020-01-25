# Command History

## ネットワークの確認
``` sh
% docker network inspect bridge
```

## データベースサイド
### コンテナの作成 & 起動
``` sh
% docker run -p 5432:5432 --name go-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
```

### コンテナへの接続
``` sh
# Log into the container using the postgres user and start psql
% docker exec -it -u postgres go-postgres psql
```

### データベースの作成
``` sql
-- Create the database using the create command
postgres=# create database gotutorial;
-- Exit psql and the container
postgres=# \q
```

## サーバサイド
### マイグレーションディレクトリの作成
``` sh
# From the root directory
% mkdir migrations
```

### コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server -v /Users/yuki/github.com/muryakami/go-react/migrations:/app/migrations -p 8080:8080 -it [IMAGE] bash
```

### マイグレーションファイルの作成
``` sh
# From the /app directory
$ goose -dir migrations create initial_seed sql
```

###  マイグレーションファイルの適用
``` sh
# From the /app directory
$ goose -dir migrations postgres "postgres://postgres:mysecretpassword@172.17.0.2:5432/gotutorial?sslmode=disable" up
```

※ IP アドレスは以下のコマンドで確認可能
``` sh
# データベースサイドのコンテナで実行
$ hostname -i
```

### サーバの起動
``` sh
# From the /app/server directory
$ DATABASE_URL=postgres://postgres:mysecretpassword@172.17.0.2:5432/gotutorial?sslmode=disable go run main.go
```

※ IP アドレスは以下のコマンドで確認可能
``` sh
# データベースサイドのコンテナで実行
$ hostname -i
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

### サーバの起動
``` sh
# From the /client directory
$ npm start
```

# Usage

## ネットワークの確認
``` sh
% docker network inspect bridge
```

## Docker image の確認
``` sh
% docker images
```

## データベースサイド
### コンテナの作成 & 起動
``` sh
% docker run -p 5432:5432 --name go-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres
```

### コンテナへの接続
``` sh
% docker exec -it -u postgres go-postgres psql
```

### データベースへの接続
#### IN
``` sql
-- \c will connect to the database we have created
postgres=# \c gotutorial
```
#### OUT
``` sql
You are now connected to database "gotutorial" as user "postgres".
```

### テーブルの確認
#### IN
``` sql
gotutorial=# \dt
```
#### OUT
``` sql
              List of relations
 Schema |       Name       | Type  |  Owner
--------+------------------+-------+----------
 public | goose_db_version | table | postgres
 public | ping_timestamp   | table | postgres
(2 rows)
```

### データベースとの接続解除
``` sql
gotutorial=# \q
```

## サーバサイド
### コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server -v /Users/yuki/github.com/muryakami/go-react/migrations:/app/migrations -p 8080:8080 -it [IMAGE] bash
```

### サーバの起動
``` sh
# From the /app/server directory
$ DATABASE_URL=postgres://postgres:mysecretpassword@172.17.0.2:5432/gotutorial?sslmode=disable go run main.go
```

※ IP アドレスは以下のコマンドで確認可能
``` sh
# データベースサイドのコンテナで実行
$ hostname -i
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

### サーバの起動
``` sh
# From the /client directory
$ npm start
```

## HTTP リクエスト
``` sh
% open localhost:3000
```
