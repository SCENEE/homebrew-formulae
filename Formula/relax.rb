class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.1.1.tar.gz"
  sha256 "28def3be11e73df9038e453eae9db8787c322c4b6570d9ed47cedfc3e9a6adfb"
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
