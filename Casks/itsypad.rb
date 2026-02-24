cask "itsypad" do
  version "1.9.5"
  sha256 "84f3a6f2f8f73d2a0a50950360089bb562f8776370fd3d08ed7ec4e5dfd95966"

  url "https://github.com/nickustinov/itsypad-macos/releases/download/v#{version}/Itsypad-#{version}.dmg"
  name "Itsypad"
  desc "A tiny, fast scratchpad and clipboard manager for Mac"
  homepage "https://github.com/nickustinov/itsypad-macos"

  depends_on macos: ">= :sonoma"

  app "Itsypad.app"

  zap trash: [
    "~/Library/Application Support/Itsypad",
    "~/Library/Preferences/com.nickustinov.itsypad.plist",
  ]
end
