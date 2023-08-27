# YomuTube

[![Last Commit](https://img.shields.io/github/last-commit/shin-sforzando/yomutube)](https://github.com/shin-sforzando/yomutube/graphs/commit-activity)
[![CI for Front-End](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-front.yml/badge.svg)](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-front.yml)
[![CI for Back-End](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-back.yml/badge.svg)](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-back.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![OpenSSF Best Practices](https://www.bestpractices.dev/projects/7773/badge)](https://www.bestpractices.dev/projects/7773)

A service that watches YouTube on behalf of you.

あなたに代わって、YouTubeを視聴するサービス。

- [Prerequisites](#prerequisites)
  - [Common](#common)
  - [Back-End](#back-end)
  - [Front-End](#front-end)
- [How to](#how-to)
  - [Setup](#setup)
    - [Firebase](#firebase)
  - [Document](#document)
    - [CHANGELOG](#changelog)
- [Misc](#misc)
  - [LICENSE](#license)
  - [Contributors](#contributors)

## Prerequisites

### Common

- [direnv](https://direnv.net)
- [pre-commit](https://pre-commit.com)

### Back-End

- [Pulumi](https://www.pulumi.com) (Version `3.79.0` or higher)
  - Google Cloud SDK (Version `444.0.0` or higher)
  - Firebase CLI (Version `12.5.2` or higher)

### Front-End

- Flutter SDK (Version `3.13.1` or higher)
  - [FlutterFire](https://firebase.flutter.dev)

## How to

```shell
$ make help
default              常用
init                 初期
open                 閲覧
hide                 秘匿
reveal               暴露
clean                掃除
help                 助言
```

### Setup

`make init` to setup all dependencies.

#### Firebase

See. [Flutter アプリに Firebase を追加する](https://firebase.google.com/docs/flutter/setup?hl=ja&platform=web#prerequisites)

```shell
firebase login
dart pub global activate flutterfire_cli
flutterfire configure
```

### Document

- [業務要件定義書](https://github.com/shin-sforzando/yomutube/wiki/01_%E6%A5%AD%E5%8B%99%E8%A6%81%E4%BB%B6%E5%AE%9A%E7%BE%A9%E6%9B%B8)
- [システム概要書](https://github.com/shin-sforzando/yomutube/wiki/02_%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E6%A6%82%E8%A6%81%E6%9B%B8)
- [機能要件定義書](https://github.com/shin-sforzando/yomutube/wiki/03_%E6%A9%9F%E8%83%BD%E8%A6%81%E4%BB%B6%E5%AE%9A%E7%BE%A9%E6%9B%B8)
- [非機能要件定義書](https://github.com/shin-sforzando/yomutube/wiki/04_%E9%9D%9E%E6%A9%9F%E8%83%BD%E8%A6%81%E4%BB%B6%E5%AE%9A%E7%BE%A9%E6%9B%B8)
- [WBS](https://github.com/shin-sforzando/yomutube/wiki/05_WBS)
- [システム構成図](https://github.com/shin-sforzando/yomutube/wiki/06_%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E6%A7%8B%E6%88%90%E5%9B%B3)
- [画面設計書](https://github.com/shin-sforzando/yomutube/wiki/07_%E7%94%BB%E9%9D%A2%E8%A8%AD%E8%A8%88%E6%9B%B8)
- [DB設計書](https://github.com/shin-sforzando/yomutube/wiki/08_DB%E8%A8%AD%E8%A8%88%E6%9B%B8)
- [IF定義書](https://github.com/shin-sforzando/yomutube/wiki/09_IF%E5%AE%9A%E7%BE%A9%E6%9B%B8)
- [テスト設計書](https://github.com/shin-sforzando/yomutube/wiki/10_%E3%83%86%E3%82%B9%E3%83%88%E8%A8%AD%E8%A8%88%E6%9B%B8)
- [テスト報告書](https://github.com/shin-sforzando/yomutube/wiki/11_%E3%83%86%E3%82%B9%E3%83%88%E5%A0%B1%E5%91%8A%E6%9B%B8)
- [ソースコード解説](https://github.com/shin-sforzando/yomutube/wiki/12_%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E8%A7%A3%E8%AA%AC)
- [運用マニュアル](https://github.com/shin-sforzando/yomutube/wiki/13_%E9%81%8B%E7%94%A8%E3%83%9E%E3%83%8B%E3%83%A5%E3%82%A2%E3%83%AB)

#### CHANGELOG

To update [CHANGELOG.md](./CHANGELOG.md) manually,

```shell
git cliff --output CHANGELOG.md
```

## Misc

This repository is [Commitizen](https://commitizen.github.io/cz-cli/) friendly, following [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow).
See [CONTRIBUTING.md](./CONTRIBUTING.md) for details.

### LICENSE

See [LICENSE](./LICENSE).

### Contributors

- [sforzando LLC. and Inc.](https://sforzando.co.jp/)
  - [Shin'ichiro Suzuki](https://github.com/shin-sforzando)
