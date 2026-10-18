class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.4.0/pando-v3.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "a398e555d26ed0786799159c33c66ca7f6b00e3fd7fad21c52a811f244e38e44"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.4.0/pando-v3.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "0946b2409d2ef37ab2956701cbb3c1f1085f810f8df793d3c63bd42322802a68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.4.0/pando-v3.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54e8f4a4a2f6bb33041d8fdd16bc1cfc3454bb545dfcbf900e383395250c4ae3"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.4.0/pando-v3.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c03e0d236d827283d8d21507c609427d2b24463d69dca6112d0e0d5349d4f8d"
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
