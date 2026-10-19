# umindhub Homebrew Tap

**Deutsch** · [English](README.md) · [Español](README_es.md) · [Français](README_fr.md) · [Italiano](README_it.md) · [日本語](README_ja.md) · [한국어](README_ko.md) · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

Homebrew-Casks und -Formeln für Apps und Tools von [YouMindHub](https://youmindhub.com/).

## Einrichtung

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

Das klassische Launchpad für macOS 15+, dazu Zwischenablage-Verlauf, Workflows und Fenstersteuerung.

```bash
brew install --cask apppad
```

Aktualisieren / Deinstallieren:

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # Einstellungen & Daten behalten
brew uninstall --zap --cask apppad    # auch Einstellungen & Daten entfernen
```

Quellcode: <https://github.com/umindhub/AppPad>

## YouMindHub

Local-first Aufgaben- und Projektverwaltung mit Git-Synchronisierung, für macOS 14+.

```bash
brew install --cask youmindhub
```

Aktualisieren / Deinstallieren:

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # Einstellungen & Daten behalten
brew uninstall --zap --cask youmindhub    # auch Einstellungen & Daten entfernen (inkl. lokaler Projekte)
```

> [!NOTE]
> YouMindHub gibt es auch im [Mac App Store](https://apps.apple.com/app/id6783152453).
> Beide werden nach `/Applications/YouMindHub.app` installiert — entferne zuerst die App-Store-Version
> (oder verwende `brew install --cask --force youmindhub`).
> In-App-Abonnements sind nur in der App-Store-Version verfügbar.

Website: <https://youmindhub.com/>

Releases: <https://github.com/umindhub/YouMindHub/releases>

## makedmg

Kommandozeilen-Tool, das gestaltete DMGs aus einer JSON-Konfiguration erstellt: Hintergrundfarbe oder -bild, Symbolanordnung, Programme-Link, Volume-Symbol. Es öffnet kein Finder-Fenster und läuft daher auch in CI. Signiert und notarisiert die DMG und heftet das Ticket an. macOS 13+.

```bash
brew install umindhub/tap/makedmg
```

Schnellstart:

```bash
makedmg init --app build/MyApp.app
makedmg preview -c makedmg.json
makedmg build -c makedmg.json --open
```

Aktualisieren / Deinstallieren:

```bash
brew upgrade makedmg
brew uninstall makedmg
```

Quellcode: <https://github.com/umindhub/MakeDmg>
