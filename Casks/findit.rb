cask "findit" do
  version "1.0.0"
  sha256 "b665644166110175f015e0237de608fc7f6df64f3990da3c82d9d72ff9b06039"

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
