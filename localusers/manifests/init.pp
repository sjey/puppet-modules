class localusers {
	user { 'admin':
		uid => '502',
		gid => 'wheel',
		ensure => present,
		home => '/home/admin',
		shell => '/bin/bash',
		managehome => true,
		password => '123456',
	}
	user { 'rithu':
		ensure => present,
		shell => '/bin/bash',
		home => '/home/rithu',
		groups => ['wheel','finance'],
		managehome => true,
	}
		
}
