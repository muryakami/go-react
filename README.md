# コンテナ操作
コンテナ操作に役立ちそうなコマンドを以下に記す

## コンテナの作成 & コンテナへの ssh
```
% docker run -it [IMAGE]
```

## コンテナの起動
```
% docker start [CONTAINER ID]
```

## コンテナへの ssh
```
% docker exec -it [CONTAINER ID] bash
```

## コンテナの停止
```
% docker stop [CONTAINER ID]
```

## コンテナの全削除
```
% docker rm `docker ps -a -q`
```

## イメージの全削除
```
% docker rmi `docker images -a -q`
```
