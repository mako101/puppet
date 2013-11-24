class puppet::git {
  @package {'git':
    ensure => installed,
  }
}