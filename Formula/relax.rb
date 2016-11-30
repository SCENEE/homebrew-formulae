class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.1.0.tar.gz"
  sha256 "b6968bff707b0dbdcd1a78e342115a20ccafea87c9a62cfe6513392ef7d7a5a3"
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
