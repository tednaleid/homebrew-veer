class Veer < Formula
  desc "Claude Code hook that redirects tool calls toward safer alternatives"
  homepage "https://github.com/tednaleid/veer"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-aarch64-macos.tar.gz"
      sha256 "1dec3a6880ac9b8502c8d269ad93d780e8c7176c46b3996f92e691e5ca9f0c1f"
    end
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-macos.tar.gz"
      sha256 "8ded6fdafa2039be0571ecfbc7d052d6b0c587b00596ec1ef49f0855288a4af4"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/veer/releases/download/v#{version}/veer-x86_64-linux-musl.tar.gz"
      sha256 "7a85cc85a6f5b00b4dca94ff6762dcd1fbaf6150a5777e087b00b8d5902031df"
    end
  end

  def install
    bin.install "veer"
  end

  test do
    system "#{bin}/veer", "--version"
  end
end
