class Veer < Formula
  desc "Claude Code hook that redirects tool calls toward safer alternatives"
  homepage "https://github.com/tednaleid/veer"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-aarch64-macos.tar.gz"
      sha256 "3b1874484c128598888a2a28740993fa7cef30306fca424deb73030bbe32cde3"
    end
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-macos.tar.gz"
      sha256 "cebcd949ac963698d20e2dcf6caaad1a9c9fe01f92bfa1436bee9363a7e15716"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-linux-musl.tar.gz"
      sha256 "deeb733e210f7e81ae76e45247345c72ecd32f2f7cc320c71060e7aa1185ac21"
    end
  end

  def install
    bin.install "veer"
  end

  test do
    system "#{bin}/veer", "--version"
  end
end
