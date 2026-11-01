cask "precut" do
  version "0.9.0"
  sha256 "d86094f479db2941188048ecfa969cff0aa25d7781ec540604a711ef41d69511"

  url "https://github.com/alimzysworld/precut/releases/download/v#{version}/precut.dmg"
  name "precut"
  desc "Video pre-editor for short-form creators, driven by Claude Code or Codex"
  homepage "https://sidething.com/precut"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "precut.app"

  zap trash: [
    "~/.claude/skills/precut",
    "~/.codex/skills/precut",
    "~/.local/bin/precut",
    "~/Library/Application Support/precut",
    "~/Library/Caches/com.sidething.precut",
    "~/Library/Caches/com.sidething.precut.ShipIt",
    "~/Library/Preferences/com.sidething.precut.plist",
    "~/Library/Saved Application State/com.sidething.precut.savedState",
  ]
end
