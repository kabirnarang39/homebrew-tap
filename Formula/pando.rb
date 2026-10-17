class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.4.0/pando-v2.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "477919d1ddfcc2538353ef9f8e2a9dd995e93dd602deeef82228f9d7532605ba"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.4.0/pando-v2.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "ca8011ac685ae0c942d3ca3180b442465f0002bf6399a5265b96b529dcc739dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.4.0/pando-v2.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0269fb1b58312aedecf051c2659c5d21c478b93932cf4ec0f797594d7332ee7"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.4.0/pando-v2.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04348cae78039dab51f658116c2eac397208cfdcce38a5f99309dbee2353279a"
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
