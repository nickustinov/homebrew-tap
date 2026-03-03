cask "itsytv" do
  version "1.4.4"
  sha256 "6e8f6bd588033b6601b74e280b09b936b9ac5603b7836fc2e70721f0e7aa390f"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/Itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "Itsytv.app"
end
