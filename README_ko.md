# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · [Español](README_es.md) · [Français](README_fr.md) · [Italiano](README_it.md) · [日本語](README_ja.md) · **한국어** · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

[YouMindHub](https://youmindhub.com/) 앱을 위한 Homebrew Cask입니다.

## 설정

```bash
brew tap umindhub/tap
brew trust umindhub/tap
```

## AppPad

macOS 15 이상을 위한 클래식 Launchpad. 클립보드 기록, 워크플로, 윈도우 제어까지 제공합니다.

```bash
brew install --cask apppad
```

업데이트 / 제거:

```bash
brew upgrade --cask apppad
brew uninstall --cask apppad          # 설정과 데이터 유지
brew uninstall --zap --cask apppad    # 설정과 데이터도 삭제
```

소스 코드: <https://github.com/umindhub/AppPad>

## YouMindHub

Git 동기화를 지원하는 로컬 우선 할 일·프로젝트 관리 앱 (macOS 14 이상).

```bash
brew install --cask youmindhub
```

업데이트 / 제거:

```bash
brew upgrade --cask youmindhub
brew uninstall --cask youmindhub          # 설정과 데이터 유지
brew uninstall --zap --cask youmindhub    # 설정과 데이터도 삭제 (로컬 프로젝트 포함)
```

> [!NOTE]
> YouMindHub는 [Mac App Store](https://apps.apple.com/app/id6783152453)에서도 제공됩니다.
> 두 버전 모두 `/Applications/YouMindHub.app`에 설치되므로 App Store 버전을 먼저 삭제하세요
> (또는 `brew install --cask --force youmindhub` 사용).
> 앱 내 구독은 App Store 버전에서만 이용할 수 있습니다.

웹사이트: <https://youmindhub.com/>

릴리스: <https://github.com/umindhub/YouMindHub/releases>
