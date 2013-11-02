class ntp_uk inherits ntp {
  File['/etc/ntp.conf'] {
    source  => 'puppet:///modules/ntp/ntp_uk.conf',
  }
}