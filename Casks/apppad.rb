cask "apppad" do
  version "1.0.7"
  sha256 "a9b24a507c4e5dd146a6ac9ac1c90b2f918e0ff6527443947360d69ad66db4ff"

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
