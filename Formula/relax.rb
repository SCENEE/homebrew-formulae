class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.1.3.tar.gz"
  sha256 "9aaad7b891819cfafc6341856e68c039669d550d7d21761b10b35dd43d30fb1a"
  head "https://github.com/SCENEE/relax.git"

  def install
    prefix.install Dir["*"]
  end

  def caveats; <<-EOS.undent
    To enable completion, add the following to your profile:
      if which relax > /dev/null; then source "$(relax init completion)"; fi
EOS
  end

  #test do
  #end
end
