# umindhub Homebrew Tap

Homebrew casks for apps by [YouMindHub](https://apppad.youmindhub.com/).

## Setup

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

The classic Launchpad for macOS 26+, plus clipboard history, workflows and window control.

```bash
brew install --cask apppad
```

Upgrade / uninstall:

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # keep settings & data
brew uninstall --zap --cask apppad    # also remove settings & data
```

Source: <https://github.com/umindhub/AppPad>

## YouMindHub

Local-first todo and project manager with Git sync, for macOS 14+.

```bash
brew install --cask youmindhub
```

Upgrade / uninstall:

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # keep settings & data
brew uninstall --zap --cask youmindhub    # also remove settings & data (local projects included)
```

> [!NOTE]
> YouMindHub is also on the [Mac App Store](https://apps.apple.com/app/id6783152453).
> Both install to `/Applications/YouMindHub.app` — remove the App Store copy first
> (or use `brew install --cask --force youmindhub`).
> In-app subscription is only available in the App Store version.

Releases: <https://github.com/umindhub/YouMindHub/releases>
