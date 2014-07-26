class Specinfra::Command::Openbsd::Base::Interface < Specinfra::Command::Base::Interface 
  def get_speed_of(name)
    "ifconfig #{name} | grep 'media\:' | perl -pe 's|.*media\:.*\\((.*?)\\)|\\1|'"
  end

  def check_ipv4_address(interface, ip_address)
    "ifconfig #{interface} | grep -w inet | cut -d ' ' -f 2"
  end
end