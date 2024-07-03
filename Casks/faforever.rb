cask "faforever" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.1+26"
  sha256 arm:   "5773d39be66cf5fea8fbedf43e76eb445b2fc4f3cc588d5e42675872bd08cee9",
         intel: "6ab2c0a26fd3e1a3403ff06b3f2d208314c549cf07daa0db90d19f0f5a96af96"

  url "https://github.com/cyf/faforever/releases/download/v#{version}/FaForever_#{version}_#{arch}.dmg",
      verified: "github.com/cyf/faforever/"
  name "FaForever"
  desc "Always with you"
  homepage "https://chenyifaer.com/faforever"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.filter_map do |tag|
        match = tag&.match(/^v?(\d+(?:\.\d+)+(\+\d+)?)$/i)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "FaForever.app"

  zap trash: [
    "~/Library/Application Support/FaForever",
    "~/Library/Caches/com.chenyifaer.faforever",
    "~/Library/Caches/FaForever",
    "~/Library/Preferences/com.chenyifaer.faforever.plist",
    "~/Library/Saved Application State/com.chenyifaer.faforever.savedState",
  ]
end
