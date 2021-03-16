I am a Smalltalk-level representation of OpenSSL's EVP_PKEY_CTX.

Goofy interface alert: Although my Smalltalk class name is LcEvpPublicKeyContext, the related C-level EVP_PKEY structure can hold either a private key or a public key.