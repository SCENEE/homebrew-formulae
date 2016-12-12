class Relax < Formula
  desc "Release tool for Xcode"
  homepage "https://github.com/SCENEE/relax"
  url "https://github.com/SCENEE/relax/archive/v0.1.2.tar.gz"
  sha256 "e929172ad40a7ccee45494cdf066ae7df8e7770844203abbbfbb297866552547"
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
