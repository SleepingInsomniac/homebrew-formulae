class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/1.0.0.tar.gz"
  sha1 "4062da25c2d6215c0cb9ee502d81fd9881a29171"

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
