# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · [Español](README_es.md) · [Français](README_fr.md) · [Italiano](README_it.md) · [日本語](README_ja.md) · [한국어](README_ko.md) · **Nederlands** · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

Homebrew-casks voor apps van [YouMindHub](https://youmindhub.com/).

## Instellen

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

Het klassieke Launchpad voor macOS 15+, plus klembordgeschiedenis, workflows en vensterbeheer.

```bash
brew install --cask apppad
```

Bijwerken / verwijderen:

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # instellingen & gegevens behouden
brew uninstall --zap --cask apppad    # ook instellingen & gegevens verwijderen
```

Broncode: <https://github.com/umindhub/AppPad>

## YouMindHub

Local-first taken- en projectbeheer met Git-synchronisatie, voor macOS 14+.

```bash
brew install --cask youmindhub
```

Bijwerken / verwijderen:

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # instellingen & gegevens behouden
brew uninstall --zap --cask youmindhub    # ook instellingen & gegevens verwijderen (inclusief lokale projecten)
```

> [!NOTE]
> YouMindHub staat ook in de [Mac App Store](https://apps.apple.com/app/id6783152453).
> Beide worden geïnstalleerd in `/Applications/YouMindHub.app` — verwijder eerst de App Store-versie
> (of gebruik `brew install --cask --force youmindhub`).
> Abonneren in de app kan alleen in de App Store-versie.

Website: <https://youmindhub.com/>

Releases: <https://github.com/umindhub/YouMindHub/releases>
