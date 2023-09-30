# YomuTube

[![Last Commit](https://img.shields.io/github/last-commit/shin-sforzando/yomutube)](https://github.com/shin-sforzando/yomutube/graphs/commit-activity)
[![CI for Front-End](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-front.yml/badge.svg)](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-front.yml)
[![CI for Back-End](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-back.yml/badge.svg)](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-back.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![OpenSSF Best Practices](https://www.bestpractices.dev/projects/7773/badge)](https://www.bestpractices.dev/projects/7773)

A service gives transcribed YouTube for You.

あなたのためにYouTubeを書き起こしてくれるサービス。

- [Prerequisites](#prerequisites)
- [How to](#how-to)
  - [Setup](#setup)
    - [Firebase](#firebase)
  - [Develop](#develop)
    - [Infrastructure](#infrastructure)
    - [Back-End](#back-end)
      - [Emulator](#emulator)
    - [Front-End](#front-end)
  - [Test](#test)
  - [Document](#document)
    - [CHANGELOG](#changelog)
- [Misc](#misc)
  - [LICENSE](#license)
  - [Contributors](#contributors)

## Prerequisites

- [Pulumi](https://www.pulumi.com) (Version `3.86.0` or higher)
  - Google Cloud SDK (Version `447.0.0` or higher)
  - Firebase CLI (Version `12.6.0` or higher)
- Flutter SDK (Version `3.13.6` or higher)
  - [FlutterFire](https://firebase.flutter.dev) (Version `0.2.7` or higher)
- [direnv](https://direnv.net)
- [lcov](https://github.com/linux-test-project/lcov)
- [pre-commit](https://pre-commit.com)

## How to

```shell
$ make help
./pulumi/default     常用
./pulumi/setup       準備
./pulumi/open        閲覧
./pulumi/hide        秘匿
./pulumi/reveal      暴露
./pulumi/check       検証
./pulumi/test        試験
./pulumi/preview     確認
./pulumi/up          反映
./pulumi/clean       掃除
./pulumi/cwd         現地
./pulumi/help        助言
default              常用
setup                準備
open                 閲覧
hide                 秘匿
reveal               暴露
check                検証
emulator             模倣
debug                確認
test                 試験
build                構築
deploy               配備
clean                掃除
help                 助言
FORCE                強制
```

### Setup

`make setup` to setup all dependencies.

#### Firebase

See. [Flutter アプリに Firebase を追加する](https://firebase.google.com/docs/flutter/setup?hl=ja&platform=web#prerequisites)

```shell
firebase login
dart pub global activate flutterfire_cli
flutterfire configure
firebase experiments:enable webframeworks
```

### Develop

#### Infrastructure

Change Directory to `pulumi` and `source venv/bin.activate` to activate virtual Python 3.11 environment.

#### Back-End

##### Emulator

`make emulator` to start Firebase Emulator Suite.
Emulator UI can be viewed at `http://0.0.0.0:4000`.

#### Front-End

`make debug` to preview the site on Chrome.

### Test

(T. B. D.)

### Document

See [Wiki](https://github.com/shin-sforzando/yomutube/wiki).

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
