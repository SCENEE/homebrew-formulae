class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.3.5.tar.gz"
  sha256 "55806db3bc35f8caabba3156fb7c1cceb02a1f720b15181b6cca005d21d3f775"
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
