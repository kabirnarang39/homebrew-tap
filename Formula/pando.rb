class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.5.1/pando-v3.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "465c810e0515b17512ba45ebbe855d2139ba400fb02652c2040669ceffc2dec9"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.5.1/pando-v3.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "51c41f024fc3ddc6227c97e18e157eb7aea0aee643c5028ff902970c75fe6b41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.5.1/pando-v3.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0f98c20eb6114e4fed0a3ab46f001a27346d5d51247788ebdb9c035d0c1978c"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.5.1/pando-v3.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc1baded73f674f80a6a3220b5dd16d8e842b6af3452c1a69f6c2435acc41569"
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
