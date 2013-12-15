Facter.add(:users) do
  setcode do
    Facter::Util::Resolution.exec('/usr/bin/who | wc -l').chomp
  end
end
