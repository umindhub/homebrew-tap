# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · [Español](README_es.md) · [Français](README_fr.md) · [Italiano](README_it.md) · [日本語](README_ja.md) · [한국어](README_ko.md) · [Nederlands](README_nl.md) · **简体中文** · [繁體中文](README_zh-Hant.md)

[YouMindHub](https://youmindhub.com/) 旗下应用与工具的 Homebrew Cask / Formula。

## 初始设置

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

适用于 macOS 15+ 的经典启动台，另有剪切板历史、工作流和窗口控制。

```bash
brew install --cask apppad
```

升级 / 卸载：

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # 保留设置和数据
brew uninstall --zap --cask apppad    # 同时删除设置和数据
```

源代码： <https://github.com/umindhub/AppPad>

## YouMindHub

本地优先的任务与项目管理应用，支持 Git 同步，适用于 macOS 14+。

```bash
brew install --cask youmindhub
```

升级 / 卸载：

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # 保留设置和数据
brew uninstall --zap --cask youmindhub    # 同时删除设置和数据（包括本地项目）
```

> [!NOTE]
> YouMindHub 也已上架 [Mac App Store](https://apps.apple.com/app/id6783152453)。
> 两者都安装到 `/Applications/YouMindHub.app`，请先删除 App Store 版
> （或使用 `brew install --cask --force youmindhub`）。
> 应用内订阅仅在 App Store 版中提供。

官网： <https://youmindhub.com/>

版本发布： <https://github.com/umindhub/YouMindHub/releases>

## makedmg

用 JSON 配置生成带样式 DMG 的命令行工具：背景色或背景图、图标布局、“应用程序”快捷方式、卷图标。全程不打开 Finder 窗口，CI 上也能运行。可直接完成 DMG 的签名、公证与装订。macOS 13+。

```bash
brew install umindhub/tap/makedmg
```

快速上手：

```bash
makedmg init --app build/MyApp.app
makedmg preview -c makedmg.json
makedmg build -c makedmg.json --open
```

升级 / 卸载：

```bash
brew upgrade makedmg
brew uninstall makedmg
```

源代码： <https://github.com/umindhub/MakeDmg>
