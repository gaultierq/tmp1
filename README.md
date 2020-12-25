# Create a repository with your secrets

`mkdir project_secrets && cd project_secrets`

## gen a strong password
`openssl rand -base64 30`

## gen  a pub/priv key; save the priv key securely; use for email firstname@project.com
`gpg --gen-key`

## download and install blackbox
https://github.com/StackExchange/blackbox#alternatives

## init blackbox
```
blackbox_initialize
echo "#envfile for project_name" > .env
blackbox_register_new_file .env
git push
```