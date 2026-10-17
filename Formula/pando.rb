class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.0.0/pando-v3.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "ced6c1013cb8b80e3835804c3f2410067e5f0d8129d2dbecd28f5b7851cf40a5"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.0.0/pando-v3.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "ceb68d6c40f9cc1a8bbe61e630a15f0d3a9b028c6c07630b4b3a5ff1deda68d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.0.0/pando-v3.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89f7c48d6ea01ca43c40bffef91c6602910db879980c6d7208efba25688f890e"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.0.0/pando-v3.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "178aae9aa19ef07fc301a6871ac5ab78fc09a96eb5301dea4ab4bfacb2665a30"
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
