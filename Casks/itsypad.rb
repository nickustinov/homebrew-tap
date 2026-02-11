cask "itsypad" do
  version "1.4.3"
  sha256 "1e90be174bef04da6d393d2809bce8e0c46abc6f52a69348b7147af8f5e86655"

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
