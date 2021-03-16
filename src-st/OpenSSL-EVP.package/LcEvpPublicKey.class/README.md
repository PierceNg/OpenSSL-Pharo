I am a Smalltalk-level representation of OpenSSL's EVP_PKEY. I provide asymmetric cryptography functionality.

Goofy interface alert: Although my Smalltalk class name is LcEvpPublicKey, my C-level EVP_PKEY structure can hold either a private key or a public key.