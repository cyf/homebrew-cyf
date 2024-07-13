cask "faforever" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "0.0.1+27"
    sha256 "e600cb4304a7b2cbd660fc3f12d304941f23147f6290052ce25e38523604fd81" # aarch64
  end
  on_intel do
    version "0.0.1+27"
    sha256 "53b866d5f8dd6c83d573ecc532110184fe4662c22f7c47ed6c70c2be2ca4583d" # x64
  end

  url "https://github.com/cyf/faforever/releases/download/v#{version}/FaForever_#{version}_#{arch}.dmg",
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
    "~/Library/Caches/com.chenyifaer.faforever",
    "~/Library/Caches/FaForever",
    "~/Library/Preferences/com.chenyifaer.faforever.plist",
    "~/Library/Saved Application State/com.chenyifaer.faforever.savedState",
  ]
end
