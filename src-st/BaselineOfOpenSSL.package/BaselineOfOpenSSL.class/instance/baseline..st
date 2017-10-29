baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [ 
		spec package: 'OpenSSL-Core';
			package: 'OpenSSL-BIO';
			package: 'OpenSSL-BigNum';
			package: 'OpenSSL-RSA';
			package: 'OpenSSL-Tests-BIO';
			package: 'OpenSSL-Tests-BigNum';
			package: 'OpenSSL-Tests-RSA' ]