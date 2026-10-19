# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · **Español** · [Français](README_fr.md) · [Italiano](README_it.md) · [日本語](README_ja.md) · [한국어](README_ko.md) · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

Casks y fórmulas de Homebrew para las apps y herramientas de [YouMindHub](https://youmindhub.com/).

## Configuración

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

El Launchpad clásico para macOS 15+, además de historial del portapapeles, flujos de trabajo y control de ventanas.

```bash
brew install --cask apppad
```

Actualizar / desinstalar:

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # conserva ajustes y datos
brew uninstall --zap --cask apppad    # elimina también ajustes y datos
```

Código fuente: <https://github.com/umindhub/AppPad>

## YouMindHub

Gestor de tareas y proyectos local-first con sincronización Git, para macOS 14+.

```bash
brew install --cask youmindhub
```

Actualizar / desinstalar:

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # conserva ajustes y datos
brew uninstall --zap --cask youmindhub    # elimina también ajustes y datos (incluidos los proyectos locales)
```

> [!NOTE]
> YouMindHub también está en la [Mac App Store](https://apps.apple.com/app/id6783152453).
> Ambas versiones se instalan en `/Applications/YouMindHub.app`: elimina primero la copia de la App Store
> (o usa `brew install --cask --force youmindhub`).
> La suscripción dentro de la app solo está disponible en la versión de la App Store.

Sitio web: <https://youmindhub.com/>

Versiones: <https://github.com/umindhub/YouMindHub/releases>

## makedmg

Herramienta de línea de comandos que crea DMG con estilo a partir de una configuración JSON: color o imagen de fondo, disposición de iconos, enlace a Aplicaciones e icono del volumen. No abre ninguna ventana del Finder, así que también funciona en CI. Firma, notariza y grapa el DMG. macOS 13+.

```bash
brew install umindhub/tap/makedmg
```

Inicio rápido:

```bash
makedmg init --app build/MyApp.app
makedmg preview -c makedmg.json
makedmg build -c makedmg.json --open
```

Actualizar / desinstalar:

```bash
brew upgrade makedmg
brew uninstall makedmg
```

Código fuente: <https://github.com/umindhub/MakeDmg>
