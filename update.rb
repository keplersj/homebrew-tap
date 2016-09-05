class Update < Formula
  desc "Utility to update all of your system's package in one go."
  homepage "https://github.com/keplersj/update"
  url "https://github.com/keplersj/update/archive/v1.1.0.tar.gz"
  sha256 "be3e75c85953685f9d5846eeeb05c6f68ca8f000e9c8af5605cb4b6b1427a516"
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
