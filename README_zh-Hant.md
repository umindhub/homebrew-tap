# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · [Español](README_es.md) · [Français](README_fr.md) · [Italiano](README_it.md) · [日本語](README_ja.md) · [한국어](README_ko.md) · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · **繁體中文**

[YouMindHub](https://youmindhub.com/) 旗下 App 與工具的 Homebrew Cask / Formula。

## 初始設定

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

適用於 macOS 15+ 的經典啟動台，另有剪貼簿歷史、工作流程與視窗控制。

```bash
brew install --cask apppad
```

升級 / 解除安裝：

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # 保留設定與資料
brew uninstall --zap --cask apppad    # 一併刪除設定與資料
```

原始碼： <https://github.com/umindhub/AppPad>

## YouMindHub

本機優先的任務與專案管理 App，支援 Git 同步，適用於 macOS 14+。

```bash
brew install --cask youmindhub
```

升級 / 解除安裝：

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # 保留設定與資料
brew uninstall --zap --cask youmindhub    # 一併刪除設定與資料（包含本機專案）
```

> [!NOTE]
> YouMindHub 也已上架 [Mac App Store](https://apps.apple.com/app/id6783152453)。
> 兩者都安裝到 `/Applications/YouMindHub.app`，請先刪除 App Store 版
> （或使用 `brew install --cask --force youmindhub`）。
> App 內訂閱僅在 App Store 版中提供。

官網： <https://youmindhub.com/>

版本發佈： <https://github.com/umindhub/YouMindHub/releases>

## makedmg

以 JSON 設定產生帶樣式 DMG 的命令列工具：背景色或背景圖、圖示佈局、「應用程式」捷徑、卷宗圖示。全程不開啟 Finder 視窗，CI 上也能執行。可直接完成 DMG 的簽署、公證與裝訂。macOS 13+。

```bash
brew install umindhub/tap/makedmg
```

快速上手：

```bash
makedmg init --app build/MyApp.app
makedmg preview -c makedmg.json
makedmg build -c makedmg.json --open
```

升級 / 解除安裝：

```bash
brew upgrade makedmg
brew uninstall makedmg
```

原始碼： <https://github.com/umindhub/MakeDmg>
