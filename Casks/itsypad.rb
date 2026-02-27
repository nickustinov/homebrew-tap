cask "itsypad" do
  version "1.9.7"
  sha256 "0b319c97e2a4b7bd2b40dd320d500690a238d3d337f9169045c7cb0c2abbd051"

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
