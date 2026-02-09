cask "itsytv" do
  version "1.2.1"
  sha256 "08b29390aec317be34828b5157c0d560c682d0da72c499b2b43b9987b2172636"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
