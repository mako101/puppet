class pysa_ipa {

  Exec {
    path => '/usr/bin:/bin:/usr/sbin:/sbin'
  }
  include hosts
  include mounts
  include groups
  include users
  include dirs
  include keys
  include repos
  include packages
  include files
  include crons
  include sources
  include services
}
