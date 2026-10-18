# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · [Español](README_es.md) · [Français](README_fr.md) · [Italiano](README_it.md) · **日本語** · [한국어](README_ko.md) · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

[YouMindHub](https://youmindhub.com/) のアプリ向け Homebrew Cask です。

## セットアップ

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

macOS 26 以降のためのクラシックな Launchpad。クリップボード履歴、ワークフロー、ウインドウ操作も搭載。

```bash
brew install --cask apppad
```

アップデート / アンインストール：

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # 設定とデータを残す
brew uninstall --zap --cask apppad    # 設定とデータも削除
```

ソースコード： <https://github.com/umindhub/AppPad>

## YouMindHub

Git 同期に対応したローカルファーストのタスク・プロジェクト管理アプリ（macOS 14 以降）。

```bash
brew install --cask youmindhub
```

アップデート / アンインストール：

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # 設定とデータを残す
brew uninstall --zap --cask youmindhub    # 設定とデータも削除（ローカルのプロジェクトを含む）
```

> [!NOTE]
> YouMindHub は [Mac App Store](https://apps.apple.com/app/id6783152453) でも配信しています。
> どちらも `/Applications/YouMindHub.app` にインストールされるため、先に App Store 版を削除してください
> （または `brew install --cask --force youmindhub` を使用）。
> アプリ内サブスクリプションは App Store 版でのみ利用できます。

Web サイト： <https://youmindhub.com/>

リリース： <https://github.com/umindhub/YouMindHub/releases>
