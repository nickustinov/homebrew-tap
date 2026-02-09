cask "itsytv" do
  version "1.3.0"
  sha256 "164dffe926dd92ad42540fa32f00fc206c8a06e71bd7da896e41d08aeefd229c"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
