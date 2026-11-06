cask "printtender" do
  version "1.3.0"
  sha256 "6151e3b65c5872b3d96b5923db60a40791c4ca86d625cc5fc096cccac4898136"

  url "https://github.com/frankt2012/PrintTender/releases/download/v#{version}/PrintTender-#{version}.dmg"
  name "PrintTender"
  desc "Offline-first maintenance tracker for 3D printers"
  homepage "https://github.com/frankt2012/PrintTender"

  depends_on macos: :monterey

  app "PrintTender.app"
end
