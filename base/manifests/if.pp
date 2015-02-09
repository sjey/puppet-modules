class base::if {
	if $::hostname =~ /^master(\d+)/ {
		notice("you have arrived here $0")
	}
}
