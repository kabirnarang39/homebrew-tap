class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.2.0/pando-v3.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "63cd24ec20bb924f18aff8ad6e20289bb2210c7cfec40118f25870669f3ec2b8"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.2.0/pando-v3.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c4877b535f32a79cdf27f2859a7995b21f4a47dd3c94e36b816186e69d8bc67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.2.0/pando-v3.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "76d4f1aa3563e7588ce12d7cf3433fabd60ce7ba6d4e5264e59ae7eaf72a3405"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.2.0/pando-v3.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a563f789cb9c2e9c06a743ec6bf2a8a67e5ce2cc20f2f2fc15b63df7250e9c6"
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
