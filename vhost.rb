class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/1.0.1.tar.gz"
  sha1 "71dd6cb5107843beefc89b24a9cb51bf9d4658bb"
  
  def install
    bin.install "vhost"
    etc.install "vhosts-conf" unless File.exists? File.join(etc, "vhosts-conf")
  end
  
  def caveats
    "Recommended: dnsmasq (a light weight dns server)"
  end
  
  test do
    system "#{bin}/vhost"
  end
end