# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "faforever" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.1+25"
  # https://docs.brew.sh/Cask-Cookbook#stanza-sha256
  sha256 arm:   "34dd1e85a44b425db892d4a2f06e5e36bd670bc9e1181646d6ae9fb614002421",
         intel: "2ac1079a14d803d938232652bb69591ba21282316bef2ba54f6ad942c968b1c5"

  # https://docs.brew.sh/Cask-Cookbook#stanza-url
  # https://docs.brew.sh/Cask-Cookbook#when-url-and-homepage-domains-differ-add-verified
  url "https://github.com/cyf/faforever/releases/download/v#{version}/FaForever_#{version}_#{arch}.dmg",
      verified: "github.com/cyf/faforever/"
  name "FaForever"
  desc "Always with you"
  homepage "https://chenyifaer.com/faforever"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
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

  # https://docs.brew.sh/Cask-Cookbook#stanza-depends_on
  depends_on macos: ">= :catalina"

  # https://docs.brew.sh/Cask-Cookbook#stanza-app
  app "FaForever.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: []
end
