cask "itsypad" do
  version "1.9.3"
  sha256 "de429a622c45dfc4a2b7a38ee5c8f2dbbd3134a119afbf09e96f2d0962cf8cb0"

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
