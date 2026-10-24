cask "youmindhub" do
  # Filled by the YouMindHub "Bump Homebrew Cask" workflow
  version "1.1.2"
  sha256 "c20b3ff2bd2f9460bcbfe8d3cf81081936ee6c9ddf1f3db771513465eda2fa40"

  url "https://github.com/umindhub/YouMindHub/releases/download/v#{version}/YouMindHub-#{version}.dmg"
  name "YouMindHub"
  desc "Local-first todo and project manager with Git sync"
  homepage "https://youmindhub.com/"

  # Track latest non-prerelease GitHub release
  livecheck do
    url :url
    strategy :github_latest
  end

  # macOS 14 Sonoma or later (bare symbol = minimum)
  depends_on macos: :sonoma

  app "YouMindHub.app"

  # Quit running app before upgrade/uninstall
  uninstall quit: "com.youmindhub"

  # Sandboxed app: all data lives in its containers; only removed with `brew uninstall --zap`
  zap trash: [
    "~/Library/Application Scripts/com.youmindhub",
    "~/Library/Containers/com.youmindhub",
    "~/Library/Group Containers/63MSW5QTJL.com.youmindhub",
  ]
end
