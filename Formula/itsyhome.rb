class Itsyhome < Formula
  desc "CLI tool to control HomeKit devices via Itsyhome"
  homepage "https://github.com/nickustinov/itsyhome-cli"
  url "https://github.com/nickustinov/itsyhome-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "462c206f5181673300a93339eea502909e7e76d7ad38eeeb146e5a75aa9bdb88"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "itsyhome", shell_output("#{bin}/itsyhome --help")
  end
end
