class Relax < Formula
  desc "Lazy release tool for iOS developers"

  homepage "https://github.com/SCENEE/relax"

  url "https://github.com/scenee/relax/archive/v0.7.2.tar.gz"
  sha256 "611e61d69da2899c177e7bb79c0e64953e9ac4c1b89e8989b10da7ca0dc4bd3b"

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
