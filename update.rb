class Update < Formula
  desc "Utility to update all of your system's package in one go."
  homepage "https://github.com/keplersj/update"
  url "https://github.com/keplersj/update/archive/v1.2.0.tar.gz"
  sha256 "d00c209a89d29013f0eeb22c1cbbb473e287e6894878b90f0d0d84de951c4a35"
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
