# umindhub Homebrew Tap

[Deutsch](README_de.md) · **English** · [Español](README_es.md) · [Français](README_fr.md) · [Italiano](README_it.md) · [日本語](README_ja.md) · [한국어](README_ko.md) · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

Homebrew casks for apps by [YouMindHub](https://youmindhub.com/).

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

Website: <https://youmindhub.com/>

Releases: <https://github.com/umindhub/YouMindHub/releases>
