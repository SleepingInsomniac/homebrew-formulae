class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/1.1.3.tar.gz"
  sha1 "8606dc8de0b31688478f6ea2d8d9bd1ace0dcb8e"

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
