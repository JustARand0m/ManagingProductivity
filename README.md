# ManagingProductivity
running on http://35.204.170.145

## Setup
Generate SSH keypair
```
ssh-keygen -t rsa -b 4096 -m PEM -f jwtRS256.key
# Don't add passphrase
openssl rsa -in jwtRS256.key -pubout -outform PEM -out jwtRS256.key.pub
cat jwtRS256.key
cat jwtRS256.key.pub
```
now move them into /ProdBackend/keys
