# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · [Español](README_es.md) · **Français** · [Italiano](README_it.md) · [日本語](README_ja.md) · [한국어](README_ko.md) · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

Casks et formules Homebrew pour les apps et outils de [YouMindHub](https://youmindhub.com/).

## Configuration

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

Le Launchpad classique pour macOS 15+, avec historique du presse-papiers, workflows et gestion des fenêtres.

```bash
brew install --cask apppad
```

Mettre à jour / désinstaller :

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # conserve les réglages et les données
brew uninstall --zap --cask apppad    # supprime aussi les réglages et les données
```

Code source : <https://github.com/umindhub/AppPad>

## YouMindHub

Gestionnaire de tâches et de projets local-first avec synchronisation Git, pour macOS 14+.

```bash
brew install --cask youmindhub
```

Mettre à jour / désinstaller :

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # conserve les réglages et les données
brew uninstall --zap --cask youmindhub    # supprime aussi les réglages et les données (projets locaux compris)
```

> [!NOTE]
> YouMindHub est aussi disponible sur le [Mac App Store](https://apps.apple.com/app/id6783152453).
> Les deux s'installent dans `/Applications/YouMindHub.app` : supprimez d'abord la copie App Store
> (ou utilisez `brew install --cask --force youmindhub`).
> L'abonnement intégré n'est disponible que dans la version App Store.

Site web : <https://youmindhub.com/>

Versions : <https://github.com/umindhub/YouMindHub/releases>

## makedmg

Outil en ligne de commande qui crée des DMG soignés à partir d’une configuration JSON : couleur ou image de fond, disposition des icônes, lien vers Applications, icône du volume. Aucune fenêtre du Finder ne s’ouvre, il fonctionne donc aussi en CI. Signe, notarise et agrafe le DMG. macOS 13+.

```bash
brew install umindhub/tap/makedmg
```

Démarrage rapide :

```bash
makedmg init --app build/MyApp.app
makedmg preview -c makedmg.json
makedmg build -c makedmg.json --open
```

Mettre à jour / désinstaller :

```bash
brew upgrade makedmg
brew uninstall makedmg
```

Code source : <https://github.com/umindhub/MakeDmg>
