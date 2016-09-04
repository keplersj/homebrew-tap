class Update < Formula
  desc "Utility to update all of your system's package in one go."
  homepage "https://github.com/keplersj/update"
  url "https://github.com/keplersj/update/archive/v1.0.1.tar.gz"
  sha256 "c87571ca2036a3e52deda7f784f4ff50a2b7e77da7b1b3867a20c3a8c33f79d6"
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
