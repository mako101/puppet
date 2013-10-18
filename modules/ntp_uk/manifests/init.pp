class ntp_uk inherits ntp {
  File['/etc/ntp.conf'] {
    source  => 'puppet:///modules/ntp_uk/ntp_uk.conf',
  }
}