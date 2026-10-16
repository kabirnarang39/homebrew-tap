class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.3/pando-v2.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "49ba19f7983645fd77d2c170dadc29e6ccedb4c9efd12d786c9cdb1d41acb4aa"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.3/pando-v2.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "933f66b8195e5149952277079ba21e33bc49943a69a13734cb614e5e66b10f2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.3/pando-v2.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0ea41d544ba8d3e8b125693ebde3210103a0de9698f0bd94299574fa54e2bd8"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.3/pando-v2.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e5d755b436ce503308429ff63d4232eac3ddd4c29340547d77247de0262f101"
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
