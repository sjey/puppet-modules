class profiles::http {
	case $::osfamily {
		'Redhat' : {$package = "apache2"  }
		'Debian' : {$package = "httpd" }
	}
	package { $package :
		ensure => present,
	}
}
