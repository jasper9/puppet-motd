# Class: mymotd
#
# This module manages mymotd
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class motd (
  $message = undef,
){
  if $::kernel == 'Linux' {
    file { '/etc/motd':
      ensure  => file,
      backup  => false,
      content => template('motd/motd.erb'),
    }
  }
}