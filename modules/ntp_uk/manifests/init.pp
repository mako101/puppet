class ntp_uk inherits ntp {
  File['/etc/ntp.conf'] {
    content => undef,
    source  => 'puppet:///modules/ntp_uk/ntp_uk.conf',
  }
}