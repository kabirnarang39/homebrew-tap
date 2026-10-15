class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.0.0/pando-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "c91ade75f6387231945f699c81cdc4a9d6bce15d40fe55496d9fe84dfdad8a7f"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.0.0/pando-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "4bf9d76ced89ab199741239c84986b93c21f7e68a590f9c014f3f3752546c2c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.0.0/pando-v2.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b32141a7a0ac1423cc48e80c5226323adc61615087fbd09132efa29149921a5"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.0.0/pando-v2.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "008442460f0e0bbd5f9e76ac64f0617d6556262dea5bf3ba1707fcd328974d21"
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
