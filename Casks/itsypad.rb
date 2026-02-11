cask "itsypad" do
  version "1.4.1"
  sha256 "c5568a8bb25aeeee28cd8cb6adb720243043692463cc1ca2dafb85402251b71b"

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
