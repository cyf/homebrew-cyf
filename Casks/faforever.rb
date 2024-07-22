cask "faforever" do
  version "1.0.0+16"
  sha256 "f72d99fc3aa185f9c50212725e6bbbdaa816fe4d5126a21dc01bafed7538ca97"

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
