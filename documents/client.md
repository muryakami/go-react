# Command History

## イメージの作成
``` sh
% docker build --no-cache .
```

## コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/client:/client  -p 5051:3000 -it [IMAGE] ash
```

## Create React App (in コンテナ)
``` sh
# From the / directory
$ npx create-react-app client
```

## Import axios package (in コンテナ)
``` sh
# From the /client directory
$ npm install axios --save
```

# Usage

## イメージの作成
``` sh
% docker build --no-cache -t react-client .
```

## コンテナの作成 & 起動 & 接続
``` sh
% docker run -v /Users/yuki/github.com/muryakami/go-react/client:/client -p 5051:3000 -it react-client ash
```

## サーバの起動 (in コンテナ)
``` sh
# From the /client directory
$ yarn start
```

## HTTP リクエスト
```
% curl localhost:5051/
```
