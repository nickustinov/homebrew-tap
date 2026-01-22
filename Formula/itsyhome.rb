class Itsyhome < Formula
  desc "CLI tool to control HomeKit devices via Itsyhome"
  homepage "https://github.com/nickustinov/itsyhome-cli"
  url "https://github.com/nickustinov/itsyhome-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "bfc2cfc890f8936f29c4e6b1e817430876191ca89c515c123d365a524fddce4f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "itsyhome", shell_output("#{bin}/itsyhome --help")
  end
end
