cask "apppad" do
  version "1.0.4"
  sha256 "6862cf251ca61416c8665ff2c7cea01e1e64ca2e0d53615cc833ae52ee17f5de"

  url "https://github.com/umindhub/AppPad/releases/download/v#{version}/AppPad-#{version}.dmg"
  name "AppPad"
  desc "Classic Launchpad replacement with clipboard, workflows and window control"
  homepage "https://apppad.youmindhub.com/"

  # Track latest non-prerelease GitHub release
  livecheck do
    url :url
    strategy :github_latest
  end

  # macOS 26 Tahoe or later
  depends_on macos: :tahoe

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
