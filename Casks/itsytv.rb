cask "itsytv" do
  version "1.4.1"
  sha256 "e554b388733f61f82e2627d292233cc810a98005d66228278d61cc62d29439cf"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
