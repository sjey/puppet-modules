class base::params {
       $author = "rithu"
       case $osfamily {
               'Redhat' : { $ssh_name = 'sshd' }
               'Debian' : { $ssh_name = 'ssh' }
               default : { fail('OS not supported') }
       }
}

