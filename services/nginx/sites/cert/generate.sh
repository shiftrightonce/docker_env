openssl req -x509 -sha256 -days 3650 -newkey rsa:2048 \
  -config ./ca.cnf -keyout ca.key -out ca.crt