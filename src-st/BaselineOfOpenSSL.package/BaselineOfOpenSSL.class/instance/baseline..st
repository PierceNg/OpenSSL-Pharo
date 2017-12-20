baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [ 
		spec package: 'OpenSSL-Core';
			package: 'OpenSSL-BIO';
			package: 'OpenSSL-BigNum';
			package: 'OpenSSL-RSA';
			package: 'OpenSSL-EVP';
			package: 'OpenSSL-X509';
			package: 'OpenSSL-Tests-BIO';
			package: 'OpenSSL-Tests-BigNum';
			package: 'OpenSSL-Tests-RSA';
			package: 'OpenSSL-Tests-EVP';
			package: 'OpenSSL-Tests-X509' ]