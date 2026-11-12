cask "findit" do
  version "0.6.0"
  sha256 "ce09421e7def7d8c242ea2f3086cc2d0979befe852627687b33732a80c7e7d3e"

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
