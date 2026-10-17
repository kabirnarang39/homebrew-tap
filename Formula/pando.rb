class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.3.0/pando-v2.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "7c8c037ccb8390b0fc27806ffe6a7aae5343f70e0d4ec3f1035381f7078b3a8f"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.3.0/pando-v2.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "07882fe28fe7e236f3d6bd8291fe2cc6a1280e394e0061d9c41ad6219130952b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.3.0/pando-v2.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f9053c7786f2d2069e03089fbcceb3af73fda9ff06b85ebf60da91c94561eb56"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.3.0/pando-v2.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d4d260c0016da6831bee0a64b744a52d34feea764a98993b962191d2ac60446"
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
