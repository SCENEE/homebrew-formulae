class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.2.0.tar.gz"
  sha256 "d90dcbf63e3a158b0a0eb8ab8c23841aba79856e5c67843bebdcfb04bd496340"
  head "https://github.com/SCENEE/relax.git"

  def install
    prefix.install Dir["*"]
  end

  def caveats; <<-EOS.undent
    To enable completion, add the following to your profile:
      if which relax > /dev/null; then source "$(relax init completion)"; fi
EOS
  end

  #test do
  #end
end
