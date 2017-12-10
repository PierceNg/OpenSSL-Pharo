I represent the OpenSSL API EVP_MD C-level type.

Note: #finalizeResourceData: is not required for this class because the EVP_MD algorithms are fixed when libcrypto.so is built, and calls such as #apiEvpSHA256 return static pointers.