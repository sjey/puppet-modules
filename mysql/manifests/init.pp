class mysql {
	$service = $::osfamily ? {
		'RedHat' => 'mysqld',
		'Debian' => 'mysql',
		default => 'mysql',
	}
	notify { "this is the variable {$service}": }
	package { 'mysql-server':
		ensure => present,
	} 
	service { 'mysql-service':
		name => $service,
		ensure => running,
	}
}
