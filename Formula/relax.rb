class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.5.7.tar.gz"
  sha256 "154cd42830b6cfe1f3e423e6d2ffefe075a217f9325b24a010d5916c7e54977f"
  head "https://github.com/SCENEE/relax.git"

  def install
    prefix.install "LICENSE", "README.md"
    prefix.install Dir["bin", "libexec", "go", "completions"]
  end

  def caveats; <<~EOS
    To enable completion, add the following line to your bash profile:
      if which relax > /dev/null; then source "$(relax init completion)"; fi
EOS
  end
end
