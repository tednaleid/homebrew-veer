class Veer < Formula
  desc "Claude Code hook that redirects tool calls toward safer alternatives"
  homepage "https://github.com/tednaleid/veer"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-aarch64-macos.tar.gz"
      sha256 "39d80d696d83eafb724599edec4e18b809b77c8e34fa3097b2b1859a96e32a85"
    end
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-macos.tar.gz"
      sha256 "3e167f2a2a807e2442f93e24a7e4b5d03d09116f7120a26b4df12316fa5e5914"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-linux-musl.tar.gz"
      sha256 "c27475600e169c07ac75165218aa8ada99ccaa089df5d130e210e7d673db6054"
    end
  end

  def install
    bin.install "veer"
  end

  test do
    system "#{bin}/veer", "--version"
  end
end
