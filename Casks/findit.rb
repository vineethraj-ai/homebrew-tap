cask "findit" do
  version "2.0.0"
  sha256 "99d82091c8f798c23489cf6a59e033ea84101f141de9f220555340c0882ab825"

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
