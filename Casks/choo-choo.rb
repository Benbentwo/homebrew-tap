cask "choo-choo" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "bb4f08b9020fd24aaaeab4d14f932f3b0088606ddb4130844ed98b105bc91041",
         intel: "81d1f236562d9899fb37e605f240b26b7184d4b03d9fe54e78ef8a999c824983"

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
