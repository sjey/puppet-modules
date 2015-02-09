class filedemo {
	File {
		owner => 'root',
		group => 'finance',
		mode => '660',
	}
	$homedir = "/root"
	$content = "file content"

	file { "${homedir}/myfile.txt" :
		content => $content,
	}
	file { "${homedir}/myfile1.txt" :
		content => "file1 content",
		owner => admin,
		group => root,
	}
	file { '/root/motd':
		ensure => present,
		source => 'puppet:///modules/filedemo/motd',
		owner => root,
		group => root,
		mode => '0644',
	}
	file { '/etc/motd':
		ensure => link,
		target => '/root/motd',
	}
}
