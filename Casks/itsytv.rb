cask "itsytv" do
  version "1.2.0"
  sha256 "d784b085cd56b4f1c1127be65c05c744c08736d92221e47e88b6f6673ab2b9b5"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
