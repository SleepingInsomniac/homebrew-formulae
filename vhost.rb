class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/1.1.4.tar.gz"
  sha1 "f070d69601d8faf87a284835eed7fc6f1a547378"

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
