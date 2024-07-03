cask "faforever" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.1+25"
  sha256 arm:   "34dd1e85a44b425db892d4a2f06e5e36bd670bc9e1181646d6ae9fb614002421",
         intel: "2ac1079a14d803d938232652bb69591ba21282316bef2ba54f6ad942c968b1c5"

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
