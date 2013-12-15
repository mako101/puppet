Facter.add("cpu_type") do
  setcode do 
    if  system("cat /proc/cpuinfo | grep -i AMD > /dev/null")
      "AMD"
    elsif system("cat /proc/cpuinfo | grep -i Intel > /dev/null")
      "Intel"
    else 
     "UNKNOWN"
    end
  end
end