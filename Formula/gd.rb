class Gd < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://grovedock.com/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/grovedock/gd/releases/download/v4.0.2/gd-v4.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "d38285df1b5129ab68639cecefe391c1f7b24626d9119a933a19bd99681a0377"
    end
    on_intel do
      url "https://github.com/grovedock/gd/releases/download/v4.0.2/gd-v4.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "73c63d50fe5a1de6192a119aacbb972f36f46329f93b377280e08f114fd55ba2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/grovedock/gd/releases/download/v4.0.2/gd-v4.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81fd839f097921bc60d8a3b004025769f82638e2fce101ef700701c5d749822a"
    end
    on_intel do
      url "https://github.com/grovedock/gd/releases/download/v4.0.2/gd-v4.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d3b96c78b2e06f336df43dba2d303a4d0b1f8a43d8be364c08c68d0e2b0988d"
    end
  end

  def install
    bin.install "gd", "grovedockd", "git-remote-gd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gd --version")
    assert_match version.to_s, shell_output("#{bin}/grovedockd --version")
  end
end
