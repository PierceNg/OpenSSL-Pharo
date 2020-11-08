# OpenSSL-Pharo

This package provides Pharo bindings to OpenSSL. The primary scope is ```libcrypto```, OpenSSL's library of cryptographic functions. Contributions via pull requests are welcome.

## Update Nov 2020

Updated for Pharo 9. Tested on Linux, to be tested on Mac and Windows.

To load, for OpenSSL 1.0.x:

```
Metacello new
  baseline: 'OpenSSL';
  repository: 'github://PierceNg/OpenSSL-Pharo:openssl_1_0_pharo9/src-st';
  load.
```

To load, for OpenSSL 1.1.x:

```
Metacello new
  baseline: 'OpenSSL';
  repository: 'github://PierceNg/OpenSSL-Pharo:openssl_1_1_pharo9/src-st';
  load.
```
## Update Jun 2020

Pharo is transitioning from OpenSSL 1.0.x to OpenSSL 1.1.1. There are C API changes between the two OpenSSL 
versions that break many tests, basic things like ```XXX_create()``` becoming ```XXX_new()```, ```XXX_init()``` becoming ```XXX_reset()``` etc. As such, I've created the branches ```openssl_1_0``` and ```openssl_1_1``` to match the versions used by Pharo.

To load, for OpenSSL 1.0.x:

```
Metacello new
  baseline: 'OpenSSL';
  repository: 'github://PierceNg/OpenSSL-Pharo:openssl_1_0/src-st';
  load.
```

To load, for OpenSSL 1.1.x:

```
Metacello new
  baseline: 'OpenSSL';
  repository: 'github://PierceNg/OpenSSL-Pharo:openssl_1_1/src-st';
  load.
```

## Available Functionality

- Message digests and HMAC functions for RIPEMD160, SHA256 and SHA512, based on the EVP API. See ```LcEvpMessageDigestTest``` and its subclasses for examples.

- RSA cryptography based on the EVP API. See ```LcEvpPublicKeyTest``` for how to sign and verify data.

## To Do

As of Dec 2019:

- PKCS7 signature verification
