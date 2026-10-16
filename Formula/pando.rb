class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.2.0/pando-v2.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "16c86bec13c4c1b0ca29792081978a2f16c7261674e224c0c9f8f04e93880c24"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.2.0/pando-v2.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "415ef4ba073f12c5fbbb43d64ff705fc4285e6704e3d68ceedfd8c2465d7a7d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.2.0/pando-v2.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3201944d879e463751ecb010360f79b5d78b00ed0dcea5dd2044030f874b5762"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.2.0/pando-v2.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04f205adef261ab38229cb906def277fa2cd1d2920d637cca0e4f9642799d425"
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
