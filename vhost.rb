
class Vhost < Formula
  homepage "https://github.com/SleepingInsomniac/vhost"
  url "https://github.com/SleepingInsomniac/vhost/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha1 "49d7fc2c68d9080334bed1b26114eb928f4c324f"

  def install
    bin.install "vhost"
  end

  test do
    system "#{bin}/vhost"
  end
end
