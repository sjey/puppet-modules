class apache::package ($package_name = $apache::params::package_name) {
	notify { "this is the pack ${package_name}": }
	package { 'apache' :
		name   => $package_name,
		ensure => present,
	}
}
