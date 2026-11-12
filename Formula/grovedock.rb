class Grovedock < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://grovedock.com/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://cloud.grovedock.com/grovedock/gd/releases/download/v4.0.7/gd-v4.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "5284fc3909990d53e3ffef8c8509b4195b97df022d6173c2bc1ee8b2f1c37b25"
    end
    on_intel do
      url "https://cloud.grovedock.com/grovedock/gd/releases/download/v4.0.7/gd-v4.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "7b39399e21397997b52d56bc122b9e4feadf9f90a9e05c2615b96dd3e55d5279"
    end
  end

  on_linux do
    on_arm do
      url "https://cloud.grovedock.com/grovedock/gd/releases/download/v4.0.7/gd-v4.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9ae8c2220e78434d082b0774499f6abcdcfa0beb92ed7acd52e362a00d08f12"
    end
    on_intel do
      url "https://cloud.grovedock.com/grovedock/gd/releases/download/v4.0.7/gd-v4.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7227187b46b36d8a098c38b703249b09f37c37dc3722922d7a9f7d70a1a375d2"
    end
  end

  def install
    bin.install "gd", "git-remote-gd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gd --version")
  end
end
