class Itsyhome < Formula
  desc "CLI tool to control HomeKit devices via Itsyhome"
  homepage "https://github.com/nickustinov/itsyhome-cli"
  url "https://github.com/nickustinov/itsyhome-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ea6aeb33696e34a47b5f1f90b7b00482d6d80872066072855c9fb434637743b9"
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
