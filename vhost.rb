class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/1.1.1.tar.gz"
  sha1 "db5201ecd4634715537da8cf499965c5320b2689"

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
