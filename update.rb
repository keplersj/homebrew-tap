class Update < Formula
  desc "Utility to update all of your system's package in one go."
  homepage "https://github.com/keplersj/update"
  url "https://github.com/keplersj/update/archive/v0.1.0.tar.gz"
  # version "0.1.0" # Audit say that the version number is taken from the URL.
  sha256 "166c50f7aa03d6c08b5893f587d68e18a0a47535cc719835cbaf186f826b3753"
  head "https://github.com/keplersj/update.git"

  depends_on "bdw-gc"
  depends_on "libevent"
  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "update"
  end

  test do
    # system "#{dir}/update" # Currently there is no way to run the program without it attempting to update the entire system.
  end
end
