class Itsyhome < Formula
  desc "CLI tool to control HomeKit devices via Itsyhome"
  homepage "https://github.com/nickustinov/itsyhome-cli"
  url "https://github.com/nickustinov/itsyhome-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "daf86bdfd3508541db278d95a7c350e6c4183699c0bf12c3d088545b70381efa"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/nickustinov/itsyhome-cli/cmd.Version=v#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/itsyhome --version")
  end
end
