class Pando < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://kabirnarang39.github.io/pando/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.0/pando-v2.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "82ef23850c2d1ed3ec4385e5d137ae9b4cbed810d327c66db5d66ec2b6d7924c"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.0/pando-v2.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "feba71c80451e981b5e8774be6e7c05460b4f56da234a28fb63b5ef729b7831d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.0/pando-v2.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a982cdc5f5c5cb0c4edda7c7ba411c319fe38ef867d2989323f565778e4c9c9d"
    end
    on_intel do
      url "https://github.com/kabirnarang39/pando/releases/download/v2.1.0/pando-v2.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "638bb899a6f76f555546b653c665ebd603a21a9ce7e04ab81ebb63b1997cd514"
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
