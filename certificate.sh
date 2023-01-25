#!/usr/bin/env bash
# openssl req -x509 -out localhost.crt -keyout localhost.key \
# -newkey rsa:2048 -nodes -sha256 \
# -subj '/CN=localhost' -extensions EXT -config <( \
# printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

if [ $# -ne 1 ]; then
	echo "Usage: $0 <domain>"
	exit 1
fi
set -eu
org=iworks
domain=${1}

# sudo trust anchor --remove "$domain".crt || true

openssl genpkey -algorithm RSA -out "$domain".key
openssl req -x509 -key "$domain".key -out "$domain".crt \
    -subj "/CN=$domain/O=$org" \
    -config <(cat /etc/ssl/openssl.cnf - <<END
[ x509_ext ]
basicConstraints = critical,CA:true
subjectKeyIdentifier = hash
authorityKeyIdentifier = keyid:always,issuer
subjectAltName = DNS:$domain
END
    ) -extensions x509_ext

