class Update < Formula
  desc "Utility to update all of your system's package in one go."
  homepage "https://github.com/keplersj/update"
  url "https://github.com/keplersj/update/archive/v1.0.0.tar.gz"
  sha256 "cdf9f34ca4906ef0f67372f522ade0b192453f80a3db6871b2dd06c77e06eaf5"
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
