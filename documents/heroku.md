# Command History

## Heroku へのログイン
``` sh
# From the root directory
% heroku login
```

## Heroku アプリケーションの作成
``` sh
# From the root directory
% heroku create
```

## Heroku デプロイ情報の設定 (コンテナデプロイ)
``` sh
# From the root directory
% heroku stack:set container
```

## Heroku addon の設定 (postgresql)
``` sh
# From the root directory
$ heroku addons:create heroku-postgresql:hobby-dev
```

## Heroku アプリケーションのリネーム (必要な場合)
``` sh
% heroku apps:rename [newname]
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

## migrate.sh の権限変更
``` sh
# From the /server directory
% chmod +x migrate.sh
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

## Heroku addon 情報の確認
``` sh
% heroku addons
```

## Heroku アプリケーション log の確認
``` sh
% heroku logs --tail
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

## Heroku addon 情報の確認
``` sh
% heroku addons
```

## Heroku アプリケーション log の確認
``` sh
% heroku logs --tail
```

## デプロイ結果の確認
``` sh
% open https://quiet-plains-41776.herokuapp.com/
```
