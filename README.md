
### Prerequisite
1. download and install blackbox
https://github.com/StackExchange/blackbox#alternatives


### Create a repository with your secrets
```
EXPORT PROJECT=FOO
EXPORT SCOPE=STAGING
```

1. obtain a pub/priv key for this project
   your email could be *firstname@foo.com*
   your password could be `openssl rand -base64 30`
```
gpg --gen-key
```

store the private key and password somewhere secure


2. creating secrets for this project-scope
```
git clone https://github.com/gaultierq/blackbox_template.git $PROJECT_$SCOPE_secrets
cd $PROJECT_$SCOPE_secrets
git remote rm origin
```

3. init blackbox and add a file name
```
blackbox_initialize
echo "#envfile for project_name" > .env
blackbox_register_new_file .env
```

4. publish on github or gitlab
