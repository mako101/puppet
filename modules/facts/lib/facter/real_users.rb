Facter.add("real_users") do
  setcode do
#    Facter::Util::Resolution.exec('ls /home | xargs echo -n | sed "s/ /,/g"')
    %x{ls /home | xargs echo -n | sed "s/ /,/g"}
  end
end
