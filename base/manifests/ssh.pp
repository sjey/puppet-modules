class base::ssh {	
#	$ssh_name = $osfamily ? {
#		'Redhat' => 'sshd',
#		'Debian' => 'ssh',
#	}
#	case $osfamily {
#		'Redhat' : { $ssh_name = 'sshd' }
#		'Debian' : { $ssh_name = 'ssh' }
#		default : { fail('OS not supported') }
#	}
	package { 'openssh-package' :
		name => 'openssh-server',
		ensure => present,
	}	
	file { '/etc/ssh/sshd_config' :
		ensure => file,
		owner  => 'root',
		group  => 'root',
		source => 'puppet:///modules/base/sshd_config',
		require => Package['openssh-server'],
		notify => Service['ssh-service-name-2'],
	}
	service { 'ssh-service' :
		name => $base::params::ssh_name,
		ensure => running,
		alias => 'ssh-service-name-2',
		enable => true,
	}
}
