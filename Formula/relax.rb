class Relax < Formula
  desc "Lazy release tool for iOS developers"

  homepage "https://github.com/SCENEE/relax"

  url "https://github.com/SCENEE/relax/archive/v0.7.0.tar.gz"
  sha256 "a0d0d9ff62ee0edd98fcf28cf9cc7c43aeeb34fc5e3bb4b99a57644b355499da"

  head "https://github.com/SCENEE/relax.git"

  def install
    prefix.install "LICENSE", "README.md"
    prefix.install Dir["bin", "libexec", "go", "completions", "share"]
  end

  def caveats; <<~EOS
    To enable completion, add the following line to your bash profile:
      if which relax > /dev/null; then source "$(relax init completion)"; fi

    To get started:
      cd /path/to/project
      relax init
      relax dist adhoc
EOS
  end

  test do
    system "${bin}/relax", "--version"
  end
end
