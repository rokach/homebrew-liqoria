cask "liqoria" do
  version "1.2.0"
  sha256 "c4bd30ddb16fd3119516bd1164d9a37f1636a19d9febbd93f3483b2058e513b7"

  url "https://github.com/rokach/homebrew-liqoria/releases/download/v#{version}/Liqoria.zip",
    verified: "github.com/rokach/homebrew-liqoria/"

  name "Liqoria"
  desc "Mac music player - Apple Music Alternative, Spotify Alternative, YouTube, and more"
  homepage "https://www.liqoria.com/"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Liqoria.app"

  zap trash: [
    "~/Library/Caches/com.aviorrok.Liqoria",
    "~/Library/Preferences/com.aviorrok.Liqoria.plist",
    "~/Library/Application Support/Liqoria",
  ]
end
