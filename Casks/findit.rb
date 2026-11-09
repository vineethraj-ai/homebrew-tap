cask "findit" do
  version "0.5.1"
  sha256 "62c58b01dadc216a6ee16934b5c4518d2a4dd1372169d434a2d9acfeaf75916a"

  url 'https://seyon.xyz/downloads/Findit-0.5.1.dmg'
  name "Findit"
  desc "Local file search and launcher with previews"
  homepage 'https://seyon.xyz'

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Findit.app"
end
