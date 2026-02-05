cask "itsytv" do
  version "1.1.1"
  sha256 "183632485d23582a07da39fc748ccad02c6fa1d60368ca4d1d3e8e3ab4d83928"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
