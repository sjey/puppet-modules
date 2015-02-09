class ntp::params {
	case $::operatingsystem {
            'ubuntu':{
			$template = 'ntpubuntu.conf'
			$service_name = 'ntp'
			$default_servers = [ "0.ubuntu.pool.ntp.org",
				             "1.ubuntu.pool.ntp.org",
 					     "2.ubuntu.pool.ntp.org",
 					     "3.ubuntu.pool.ntp.org", ]
		     }
            'centos':{
			$template = 'ntpcentos.conf'
			$service_name = 'ntpd'
			$default_servers = ["0.centos.pool.ntp.org iburst",
					    "1.centos.pool.ntp.org iburst",
					    "2.centos.pool.ntp.org iburst",
				            "3.centos.pool.ntp.org iburst", ]
                     }
             default: { fail('operating system not supported')}
        }
	$package_name = 'ntp'
}
