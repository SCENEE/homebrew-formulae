class Relax < Formula
  desc "Lazy release tool for iOS developers"

  homepage "https://github.com/SCENEE/relax"

  url "https://github.com/SCENEE/relax/archive/v0.6.0.tar.gz"
  sha256 "00515f71c319bc4c39ac1df0bfdd4fa857e6a8454353ebc2d9649f527702aab2"

  head "https://github.com/SCENEE/relax.git"

  def install
    prefix.install "LICENSE", "README.md"
    prefix.install Dir["bin", "libexec", "go", "completions", "share"]
  end

  def caveats; <<~EOS
    To enable completion, add the following line to your bash profile:
      if which relax > /dev/null; then source "$(relax init completion)"; fi
EOS
  end

  test do
    system "${bin}/relax", "--version"
  end
end
