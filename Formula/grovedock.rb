class Grovedock < Formula
  desc "Source control for monorepos at agent scale"
  homepage "https://grovedock.com/"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://cloud.grovedock.com/grovedock/gd/releases/download/v4.0.6/gd-v4.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "9601e11dae51d88bdbe339677f88f951035dbebd2c82f7378dd87caed72337c2"
    end
    on_intel do
      url "https://cloud.grovedock.com/grovedock/gd/releases/download/v4.0.6/gd-v4.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "1f8408402a3d1e6a18dc91d35a082936a3e8f09802421b3ea72ab5e9456d256b"
    end
  end

  on_linux do
    on_arm do
      url "https://cloud.grovedock.com/grovedock/gd/releases/download/v4.0.6/gd-v4.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "825ee893e1a1d351e740ef2380dcfdb260b53cdd0f71a1dfbd2275a909c0f7d6"
    end
    on_intel do
      url "https://cloud.grovedock.com/grovedock/gd/releases/download/v4.0.6/gd-v4.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a3debec10e10b9fc79906cced736c0762e001b9ff2134cbbb8a0734a4af78e7"
    end
  end

  def install
    bin.install "gd", "git-remote-gd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gd --version")
  end
end
