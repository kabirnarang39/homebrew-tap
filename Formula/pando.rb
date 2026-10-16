class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.2/pando-v2.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "c2e63ad965bdad6bb63245481fb2f0c5b7a1add83ee655f280a30937a33eb0cc"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.2/pando-v2.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "06156bfd4f52a5c4ee9671133a4a000fcb08df8939d5ef2bd2ed476bd2300058"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.2/pando-v2.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "971b82c8e388ec971656365cb9533ac8b1dbf9c6878bd96289d0d876265f03ae"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.2/pando-v2.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d88b726fd3857b6f19b3d40506e5e5a7b52c5bc28b97486fc2cd8d5730543617"
    end
  end

  def install
    bin.install "pando", "pandod", "git-remote-pando"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pando --version")
    assert_match version.to_s, shell_output("#{bin}/pandod --version")
  end
end
