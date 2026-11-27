cask "apppad" do
  version "1.7.9"
  sha256 "5a02effac3dee1e8a5587aa0451e17903e8d2649c7bbe2a8dcdf8ebe65dd5550"

  url "https://github.com/umindhub/AppPad/releases/download/v#{version}/AppPad-#{version}.dmg"
  name "AppPad"
  desc "Classic Launchpad replacement with clipboard, workflows and window control"
  homepage "https://youmindhub.com/i/apppad"

  # Track latest non-prerelease GitHub release
  livecheck do
    url :url
    strategy :github_latest
  end

  # macOS 15 Sequoia or later (bare symbol = minimum)
  depends_on macos: :sequoia

  app "AppPad.app"

  # Quit running app before upgrade/uninstall
  uninstall quit: "com.youmindhub.apppad"

  # Only removed with `brew uninstall --zap`
  zap trash: [
    "~/Library/Application Support/AppPad",
    "~/Library/Application Support/com.youmindhub.apppad",
    "~/Library/Caches/com.youmindhub.apppad",
    "~/Library/HTTPStorages/com.youmindhub.apppad",
    "~/Library/Preferences/com.youmindhub.apppad.plist",
    "~/Library/Saved Application State/com.youmindhub.apppad.savedState",
  ]
end
