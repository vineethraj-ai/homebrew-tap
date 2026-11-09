cask "findit" do
  version "0.5.1"
  sha256 "62c58b01dadc216a6ee16934b5c4518d2a4dd1372169d434a2d9acfeaf75916a"

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
