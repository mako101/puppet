class ntp::uk inherits ntp {
  File['/etc/ntp.conf'] {
    content => undef,
    source  => 'puppet:///modules/ntp/ntp_uk.conf',
  }
}