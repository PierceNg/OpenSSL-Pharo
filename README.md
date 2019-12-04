# Synopsis

This package provides Pharo bindings to OpenSSL. The primary scope is ```libcrypto```, OpenSSL's library of cryptographic functions.

Bindings to particular groups of functions will be created as and when they are needed.  Contributions via pull requests are welcome.

## Available Functionality

- Message digests and HMAC functions for RIPEMD160, SHA256 and SHA512, based on the EVP API. See ```LcEvpMessageDigestTest``` and its subclasses for examples.

- RSA cryptography based on the EVP API. See ```LcEvpPublicKeyTest``` for how to sign and verify data.

## To Do

As of Dec 2019:

- PKCS7 signature verification
