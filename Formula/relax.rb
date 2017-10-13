class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.5.2.tar.gz"
  sha256 "b29e1f6faf0a629eeac9acce185767cc271828c2eeeb7ccf16099827eea84dd4"
  head "https://github.com/SCENEE/relax.git"

  def install
    prefix.install "LICENSE", "README.md"
    prefix.install Dir["bin", "libexec", "go", "completions"]
  end

  def caveats; <<-EOS.undent
    To enable completion, add the following line to your bash profile:
      if which relax > /dev/null; then source "$(relax init completion)"; fi
EOS
  end
end
