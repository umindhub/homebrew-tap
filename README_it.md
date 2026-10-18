# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · [Español](README_es.md) · [Français](README_fr.md) · **Italiano** · [日本語](README_ja.md) · [한국어](README_ko.md) · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

Cask Homebrew per le app di [YouMindHub](https://youmindhub.com/).

## Configurazione

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

Il Launchpad classico per macOS 26+, con cronologia degli appunti, workflow e controllo delle finestre.

```bash
brew install --cask apppad
```

Aggiornare / disinstallare:

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # mantiene impostazioni e dati
brew uninstall --zap --cask apppad    # rimuove anche impostazioni e dati
```

Codice sorgente: <https://github.com/umindhub/AppPad>

## YouMindHub

Gestore di attività e progetti local-first con sincronizzazione Git, per macOS 14+.

```bash
brew install --cask youmindhub
```

Aggiornare / disinstallare:

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # mantiene impostazioni e dati
brew uninstall --zap --cask youmindhub    # rimuove anche impostazioni e dati (progetti locali inclusi)
```

> [!NOTE]
> YouMindHub è disponibile anche sul [Mac App Store](https://apps.apple.com/app/id6783152453).
> Entrambi si installano in `/Applications/YouMindHub.app`: rimuovi prima la copia dell'App Store
> (oppure usa `brew install --cask --force youmindhub`).
> L'abbonamento in-app è disponibile solo nella versione App Store.

Sito web: <https://youmindhub.com/>

Release: <https://github.com/umindhub/YouMindHub/releases>
