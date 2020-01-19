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

## コンテナの作成 & 起動 & 接続 (サーバサイド)
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/server:/app/server --network container-network -p 8080:9000 -it [IMAGE] bash
```

## コンテナの作成 & 起動 & 接続 (フロントサイド)
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/client:/client --network container-network -p 8081:9001 -it [IMAGE] ash
```

## Create React App (in コンテナ)
``` sh
$ npx create-react-app client
```

## Import axios package (in コンテナ)
``` sh
$ cd client
$ npm install axios --save
```

# Usage