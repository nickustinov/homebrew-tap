cask "itsytv" do
  version "1.1.0"
  sha256 "dd6d26f1e35bd397ee30037961c26fb3f3af6891e8cf4616415117083c57d605"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/itsytv-#{version}.dmg"
  name "itsytv"
  desc "Control Apple TV from the macOS menu bar"
  homepage "https://github.com/nickustinov/itsytv-macos"

  depends_on macos: ">= :sonoma"

  app "itsytv.app"
end
