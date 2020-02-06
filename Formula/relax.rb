class Relax < Formula
  desc "Lazy release tool for iOS developers"

  homepage "https://github.com/SCENEE/relax"

  url "https://github.com/scenee/relax/archive/0.8.4.tar.gz"
  sha256 "3b04c3aa192d70144b6e1220a96b79d2289ffa7b5d3a8b3614a693b10efe358e"

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
