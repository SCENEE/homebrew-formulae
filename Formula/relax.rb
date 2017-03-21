class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.3.4.tar.gz"
  sha256 "b1a4ea3f8bdf23f5c50364f7d601dc4dc329fb987a024d14f50622431ffb952c"
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
