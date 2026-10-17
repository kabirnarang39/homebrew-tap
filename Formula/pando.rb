class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.3.0/pando-v3.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "836f91b1b45349272308d7878835b0aa4ba8905c3f244ad8ba33c34af384d0fa"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.3.0/pando-v3.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f1e0a6783b7f4fb6bced2de394aff8e1a74269098c21508d1573a0ac1c35f0f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.3.0/pando-v3.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61c2f3d1b6314cd08bd351d088e413006dea14d132a107fac4568d704dae8a36"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.3.0/pando-v3.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4ccca20096c2b3693f4807269fd6becc9f0f2d8e0f3e518d14e0024a4cc75d2"
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
