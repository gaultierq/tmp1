
### Prerequisite
1. download and install blackbox
https://github.com/StackExchange/blackbox#alternatives


### Create a repository with your secrets

1. init a new secret blackbox
```
export PROJECT=agora
export BB_USER=quentin@agora
export SCOPE=staging
git clone https://github.com/gaultierq/blackbox_template.git ${PROJECT}_secrets
cd ${PROJECT}_secrets
git remote rm origin

export BLACKBOXDATA=$SCOPE
yes | blackbox_initialize
echo "#secret file for #SCOPE" > $SCOPE.env
echo $BB_USER | blackbox_register_new_file $SCOPE.env
git add .
```

& publish on your git repo


1. obtain a pub/priv key for this project
   your email could be *firstname@foo.com*
   your password could be `openssl rand -base64 30`
`gpg --gen-key`

store the private key and password somewhere secure