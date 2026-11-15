cask "findit" do
  version "1.0.1"
  sha256 "d0fe2d7980acfb44cbbae2d914531128bff07749ae12fb5f716e9ddce9d7cadc"

  url "https://seyon.xyz/downloads/Findit-#{version}.dmg"
  name "Findit"
  desc "Local file search and launcher with previews"
  homepage "https://seyon.xyz/"

  livecheck do
    url "https://seyon.xyz/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Findit.app"

  zap trash: [
    "~/Library/Application Support/Findit",
    "~/Library/Caches/app.findit.macos",
    "~/Library/HTTPStorages/app.findit.macos",
    "~/Library/Preferences/app.findit.macos.plist",
  ]
end
