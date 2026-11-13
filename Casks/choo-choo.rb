cask "choo-choo" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "8c1db31b28e023f5592bc1783c146a61179ac8e3ca09d5d50da18539d625aabf",
         intel: "de30420105b1a13c9f4d187a88dbf362923f1e022dea79b05fb9a84f8fd7dfd9"

  url "https://github.com/Benbentwo/choo-choo/releases/download/v#{version}/ChooChoo-#{version}-#{arch}.dmg"
  name "Choo Choo"
  desc "Run parallel Claude Code agents in git worktrees"
  homepage "https://github.com/Benbentwo/choo-choo"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: ">= :monterey"

  app "Choo Choo.app"

  zap trash: [
    "~/Library/Application Support/Choo Choo",
    "~/Library/Caches/choo-choo-updater",
    "~/Library/Caches/dev.benbentwo.choochoo",
    "~/Library/Caches/dev.benbentwo.choochoo.ShipIt",
    "~/Library/Logs/Choo Choo",
    "~/Library/Preferences/dev.benbentwo.choochoo.plist",
    "~/Library/Saved Application State/dev.benbentwo.choochoo.savedState",
  ]
end
