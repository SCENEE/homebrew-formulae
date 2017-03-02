class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.3.3.tar.gz"
  sha256 "27b0cbcaaa1a149cd61f8171885e12a68aac6f472d6e5c723ee509993cdf15de"
  head "https://github.com/SCENEE/relax.git"

  def install
    prefix.install "LICENSE", "README.md"
    prefix.install Dir["bin", "libexec", "completions"]
  end

  def caveats; <<-EOS.undent
    To enable completion, add the following line to your bash profile:
      if which relax > /dev/null; then source "$(relax init completion)"; fi
EOS
  end
end
