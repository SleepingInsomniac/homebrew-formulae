class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/1.0.2.tar.gz"
  sha1 "e67fe8a57307e09adf8c7cbcfeeee33a6aa6018c"

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
