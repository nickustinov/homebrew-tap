cask "itsypad" do
  version "1.5.0"
  sha256 "aafc99577326795989148811ec58dd157f95e37ffd04da18fe106932482ab431"

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
