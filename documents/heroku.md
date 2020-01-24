# Command History

## Heroku へのログイン
``` sh
% heroku login
```

## Create a new application
``` sh
% heroku create
```

## Tell Heroku that we intend to deploy a container to this stack
``` sh
% heroku stack:set container
```

## Push it to the Heroku remote
``` sh
% git push heroku heroku-staging:master --force
```

## If you need to retrieve your prod url etc
``` sh
% heroku apps:info
```

# Usage
