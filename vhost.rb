class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/1.1.5.tar.gz"
  sha1 "0229da67b1408398d4b9ebebf63125f11aefe43a"

  def install
    bin.install "bin/vhost"
    lib.install "lib/vhost.rb"
    etc.install "vhosts-conf" unless File.exists? File.join(etc, "vhosts-conf")
  end

  def caveats
    "Recommended: dnsmasq (a light weight dns server)"
  end

  test do
    system "#{bin}/vhost"
  end
end
