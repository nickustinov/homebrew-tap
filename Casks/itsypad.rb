cask "itsypad" do
  version "1.0.0"
  sha256 "569657b33113c7325c5259ccc9f43c10c6916ce1654a2c49211a9ea2edc529cb"

  url "https://github.com/nickustinov/itsypad-macos/releases/download/v#{version}/itsypad-#{version}.dmg"
  name "Itsypad"
  desc "Tiny, native macOS text editor and clipboard manager"
  homepage "https://github.com/nickustinov/itsypad-macos"

  depends_on macos: ">= :sonoma"

  app "itsypad.app"
end
