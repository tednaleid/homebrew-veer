class Veer < Formula
  desc "Claude Code hook that redirects tool calls toward safer alternatives"
  homepage "https://github.com/tednaleid/veer"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-aarch64-macos.tar.gz"
      sha256 "cfba6a3670c869dc96e7e36af73ac9624d67801ce74894b4b288a32e3494a9da"
    end
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-macos.tar.gz"
      sha256 "208d8225af0cfc48b6096477890740aa9f2ccf7d217e15ddde77ac1d5097b9cb"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-linux-musl.tar.gz"
      sha256 "fd3464f2576de570670433c3eae5f3ebe80cbd29076a889fce97086151a39e10"
    end
  end

  def install
    bin.install "veer"
  end

  test do
    system "#{bin}/veer", "--version"
  end
end
