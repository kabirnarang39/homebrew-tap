class Sapwood < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/sapwood/"
  version "1.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/sapwood/releases/download/v1.8.0/sapwood-v1.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "b62bfc85b2a2f38bd0c279e39c2313aae5b263d5e5ca6caa6972690bb6998d81"
    end
    on_intel do
      url "https://github.com/kabirnarang39/sapwood/releases/download/v1.8.0/sapwood-v1.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "6acdf199af8f17f23d6731c8fbe9478e72e65e4ac884e3cad8625e24a3b4fbaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/sapwood/releases/download/v1.8.0/sapwood-v1.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9905d171ec394d9778c3d645c25419e4a7d48e4aea1da85f487adf8fbf757d6c"
    end
    on_intel do
      url "https://github.com/kabirnarang39/sapwood/releases/download/v1.8.0/sapwood-v1.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4e1daa70d3ddffab85336f857b4817361889772ab4fc24454fa40f6a758d881"
    end
  end

  def install
    bin.install "sap", "sapwood", "git-remote-sapwood"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sap --version")
    assert_match version.to_s, shell_output("#{bin}/sapwood --version")
  end
end
