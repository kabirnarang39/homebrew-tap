class Grovedock < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://grovedock.com/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/grovedock/gd/releases/download/v4.0.5/gd-v4.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "36e4ad652730a8be9a5227fd6f42d0bf9945f7e805b46737aa6ca7cbb9e4e10d"
    end
    on_intel do
      url "https://github.com/grovedock/gd/releases/download/v4.0.5/gd-v4.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "5969ad58373d063f09d95b998c1e6bdc434c98ccab9aa24adb8bfd56219d85fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/grovedock/gd/releases/download/v4.0.5/gd-v4.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd767fd4f1e030c399bc264131bffa886ed4128f79d0eeca4cc9b59ef0c284e0"
    end
    on_intel do
      url "https://github.com/grovedock/gd/releases/download/v4.0.5/gd-v4.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "698eb24c96b64ab041df01abc76da6e37bf1a1984e682537aa28738014b6e0b6"
    end
  end

  def install
    bin.install "gd", "git-remote-gd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gd --version")
  end
end
