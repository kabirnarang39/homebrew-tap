class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.1.0/pando-v3.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "276c6d342ef735931aa5abc3ca5f91e6ff3d1a3790511d1ac0992bfd9f8db5a7"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.1.0/pando-v3.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "04479df877ba5bf5f78e117b5b5493bfd321cc66e94debea75069ead30c1cb65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.1.0/pando-v3.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa5621fcde7cb158e393e1d5bc94fd37fbe22f6bce538274f87ff68dc2a06760"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.1.0/pando-v3.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dcc46c51e59f35a5bb0f3d41142ef835642e5707eebc8b5ddda832788c0c017"
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
