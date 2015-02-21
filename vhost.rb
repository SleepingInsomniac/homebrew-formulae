class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/1.1.0.tar.gz"
  sha1 "d918e991fc29912f464523f31c46520eb90acd31"

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
