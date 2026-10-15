# umindhub Homebrew Tap

Homebrew casks for apps by [YouMindHub](https://apppad.youmindhub.com/).

## AppPad

The classic Launchpad for macOS 26+, plus clipboard history, workflows and window control.

```bash
brew tap umindhub/tap
brew trust umindhub/tap
brew install --cask apppad
```

Upgrade / uninstall:

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # keep settings & data
brew uninstall --zap --cask apppad    # also remove settings & data
```

Source: <https://github.com/umindhub/AppPad>
