cask "faforever" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.1+26"
  sha256 arm:   "061f89598a088d9af32969f00985899185860ceaefb378bb34bf001f5b22441b",
         intel: "6cffaba3b1a28fb1d5012268e6f8c1a4c39a38c483f2206ca435e6ecb5fab30a"

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
