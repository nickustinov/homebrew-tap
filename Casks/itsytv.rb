cask "itsytv" do
  version "1.4.2"
  sha256 "b373f93e0791037baf8ec6e8f1230925197d6c135f42a6d90bd78695647cf964"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/Itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "Itsytv.app"
end
