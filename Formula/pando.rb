class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.5.0/pando-v3.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "f73f972128f0ef3b7fb71dbc4f0e51b1c0830de71d62d62f0a542e7c77334d8f"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.5.0/pando-v3.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "9b25af94be422f836182d5cc5f01846102308dd0eaabf9576bc88c4dfcda4e25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.5.0/pando-v3.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0f40d4b1193b31ba792c5330d5a4556640842edabb2e4b1233b6dba0832b2c0"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v3.5.0/pando-v3.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fb3142be65a4d9df33a040790bfb2deb39e2b94921874e670ae6510a81c9b28"
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
