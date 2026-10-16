class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.1/pando-v2.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "d34d8304c851b2a34f4d5185d4654755e6451fc214d31f9022bc2eb2d5ffd470"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.1/pando-v2.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "947886e7c77182e01ffaccd83082e91681841cd89dedf735117ff9861cd6d7b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.1/pando-v2.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0df97c1c0e416cec5c152d212642c0b218fa32a9117c06ca89b3e12f89c4658"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.1/pando-v2.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fc3c03241823251ccd6e5b060fd6590f751b48603c2bafe0ef83e51795e4b67"
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
