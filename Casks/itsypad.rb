cask "itsypad" do
  version "1.6.0"
  sha256 "47bd06baff2cbc8a8870da37591b95f9df34332cfddddfa58979d63362dbc0f9"

  url "https://github.com/nickustinov/itsypad-macos/releases/download/v#{version}/itsypad-#{version}.dmg"
  name "Itsypad"
  desc "A tiny, fast scratchpad and clipboard manager for Mac"
  homepage "https://github.com/nickustinov/itsypad-macos"

  depends_on macos: ">= :sonoma"

  app "itsypad.app"

  zap trash: [
    "~/Library/Application Support/Itsypad",
    "~/Library/Preferences/com.nickustinov.itsypad.plist",
  ]
end
