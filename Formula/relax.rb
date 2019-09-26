class Relax < Formula
  desc "Lazy release tool for iOS developers"

  homepage "https://github.com/SCENEE/relax"

  url "https://github.com/scenee/relax/archive/v0.7.3.tar.gz"
  sha256 "452b4a17eda18b7f9d6b35e64befed71273ce7a0dfce75621d3e593847c206a4"

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
