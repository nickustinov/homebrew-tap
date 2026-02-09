cask "itsytv" do
  version "1.3.0"
  sha256 "b1455a7358de5f91775bcf579a689457788ba63c380fcd0d27d728324d0fd810"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
