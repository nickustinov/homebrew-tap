cask "itsytv" do
  version "1.4.0"
  sha256 "afc628537a85cf86d5fcf3b980653dfe19ebe122e63ef1c82fccb5b680eca9b7"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
