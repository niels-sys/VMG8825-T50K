#!/bin/bash
# ras.bin
# rsa_private.key
# sha256_rsa_file.sign

tail -c +373 ras.bin > ras_tmp.bin
openssl dgst -sign rsa_private.key -sha256 -out sha256_rsa_file.sign ras_tmp.bin
cat ras.bin sha256_rsa_file.sign > ras_signatured.bin
