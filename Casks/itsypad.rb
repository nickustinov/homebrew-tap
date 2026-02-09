cask "itsypad" do
  version "1.0.3"
  sha256 "31fa558031d2b87b0ce2f736d01a72474ffefffa33b7a3f835bbb6c18c81bc7e"

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
