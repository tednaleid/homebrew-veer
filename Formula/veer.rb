class Veer < Formula
  desc "Claude Code hook that redirects tool calls toward safer alternatives"
  homepage "https://github.com/tednaleid/veer"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-aarch64-macos.tar.gz"
      sha256 "290dbc461c8b7229693a2eb99bbd0320145d6a42bd7096c2093475cb93a7c1fb"
    end
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-macos.tar.gz"
      sha256 "db628ac04056ddeebdd574c5a96f9bdf673be98befb94d6a96d0b4852cdf87fc"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-linux-musl.tar.gz"
      sha256 "ad5d8192a3c511da17d13064a245e12b575118c877ed7e706671a19db4788af9"
    end
  end

  def install
    bin.install "veer"
  end

  test do
    system "#{bin}/veer", "--version"
  end
end
