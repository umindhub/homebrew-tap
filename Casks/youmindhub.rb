cask "youmindhub" do
  # Filled by the YouMindHub "Bump Homebrew Cask" workflow
  version "1.1.1"
  sha256 "6ebf6ab681de6f49de89da0ff902daea7623683eff038bc292206656f4092186"

  url "https://github.com/umindhub/YouMindHub/releases/download/v#{version}/YouMindHub-#{version}.dmg"
  name "YouMindHub"
  desc "Local-first todo and project manager with Git sync"
  homepage "https://github.com/umindhub/YouMindHub"

  # Track latest non-prerelease GitHub release
  livecheck do
    url :url
    strategy :github_latest
  end

  # Deployment target macOS 14.0
  depends_on macos: ">= :sonoma"

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
