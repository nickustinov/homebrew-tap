cask "itsytv" do
  version "1.0.0"
  sha256 "6d459e726644a45b4b63e21fc52a758f3a371952467c6b01f4033887d79b30d0"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
