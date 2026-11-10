cask "apppad" do
  version "1.6.6"
  sha256 "2faa7057da401168d76abd2802ce3daaf23055578f9c4e39ed656de1a842d313"

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
