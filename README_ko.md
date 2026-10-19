# umindhub Homebrew Tap

[Deutsch](README_de.md) · [English](README.md) · [Español](README_es.md) · [Français](README_fr.md) · [Italiano](README_it.md) · [日本語](README_ja.md) · **한국어** · [Nederlands](README_nl.md) · [简体中文](README_zh-Hans.md) · [繁體中文](README_zh-Hant.md)

[YouMindHub](https://youmindhub.com/) 앱과 도구를 위한 Homebrew Cask / Formula입니다.

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

## makedmg

JSON 설정으로 꾸며진 DMG를 만드는 명령줄 도구. 배경색 또는 배경 이미지, 아이콘 배치, 응용 프로그램 링크, 볼륨 아이콘을 지원합니다. Finder 창을 열지 않으므로 CI에서도 동작합니다. DMG 서명, 공증, 스테이플까지 처리합니다. macOS 13 이상.

```bash
brew install umindhub/tap/makedmg
```

빠른 시작:

```bash
makedmg init --app build/MyApp.app
makedmg preview -c makedmg.json
makedmg build -c makedmg.json --open
```

업데이트 / 제거:

```bash
brew upgrade makedmg
brew uninstall makedmg
```

소스 코드: <https://github.com/umindhub/MakeDmg>
