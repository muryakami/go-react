# Command History

## Heroku へのログイン
``` sh
% heroku login
```

## Heroku アプリケーションの作成
``` sh
% heroku create
```

## Heroku デプロイ情報の設定 (コンテナデプロイ)
``` sh
% heroku stack:set container
```

## リモートリポジトリの確認
``` sh
% git remote -v
```

## リポートリポジトリの追加 (必要な場合)
``` sh
# GitHub 側
% git remote add origin git@github.com:muryakami/go-react.git
# Heroku 側
% git remote add heroku https://git.heroku.com/quiet-plains-41776.git
```

## Heroku アプリケーションのリネーム (必要な場合)
``` sh
% heroku apps:rename [newname]
```

## Heroku へのデプロイ
### master ブランチの場合
``` sh
% git push heroku master
```
### master ブランチ以外の場合
``` sh
% git push heroku heroku-staging:master --force
```

## Heroku アプリケーション情報の確認
``` sh
% heroku apps:info
```

## デプロイ結果の確認
``` sh
% open https://quiet-plains-41776.herokuapp.com/
```

# Usage

## Heroku へのデプロイ
``` sh
% git push heroku heroku-staging:master --force
```

## Heroku アプリケーション情報の確認
``` sh
% heroku apps:info
```

## デプロイ結果の確認
``` sh
% open https://quiet-plains-41776.herokuapp.com/
```
