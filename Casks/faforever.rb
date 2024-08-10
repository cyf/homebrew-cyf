cask "faforever" do
  version "1.0.0+40"
  sha256 "f7cca8b7e798f53e1de36ed94b7fb9b246cf5ad48f94214a24f012179be90c6b"

  url "https://github.com/cyf/faforever/releases/download/v#{version}/FaForever_#{version}_macos_universal.dmg",
      verified: "github.com/cyf/faforever/"
  name "FaForever"
  desc "Third-party music player that replaces Synology DS Audio client"
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
    "~/Library/Caches/com.chenyifaer.faforever.mac",
    "~/Library/Caches/FaForever",
    "~/Library/Preferences/com.chenyifaer.faforever.mac.plist",
    "~/Library/Saved Application State/com.chenyifaer.faforever.mac.savedState",
  ]
end
