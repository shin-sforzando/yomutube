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
  - [for Back-End](#for-back-end)
    - [Pulumi](#pulumi)
    - [Cloud Functions](#cloud-functions)
  - [for Front-End](#for-front-end)
- [How to](#how-to)
  - [Setup](#setup)
    - [Firebase](#firebase)
      - [Firebase Emulator](#firebase-emulator)
  - [Develop](#develop)
    - [Back-End](#back-end)
      - [Infrastructure](#infrastructure)
      - [Cloud Functions for Firebase](#cloud-functions-for-firebase)
    - [Front-End](#front-end)
  - [Test](#test)
  - [Document](#document)
    - [CHANGELOG](#changelog)
- [Misc](#misc)
  - [LICENSE](#license)
  - [Contributors](#contributors)

## Prerequisites

- [Task](https://taskfile.dev) as **Task Runner**
- [direnv](https://direnv.net) as **Env Loader**
- [pre-commit](https://pre-commit.com) as **Git Hooks Manager**

### for Back-End

#### Pulumi

- [Pulumi](https://www.pulumi.com) (Version `3.96.1` or higher)
  - Python 3.11
  - Google Cloud SDK (Version `455.0.0` or higher)
  - Firebase CLI (Version `13.0.1` or higher)

#### Cloud Functions

- Python 3.11

### for Front-End

- Flutter SDK (Version `3.16.1` or higher)
  - [FlutterFire](https://firebase.flutter.dev) (Version `0.2.7` or higher)
- [lcov](https://github.com/linux-test-project/lcov) as **Coverage HTML Generator**

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
./functions/default     常用
./functions/setup       準備
./functions/open        閲覧
./functions/hide        秘匿
./functions/reveal      暴露
./functions/check       検証
./functions/test        試験
./functions/deploy      反映
./functions/clean       掃除
./functions/cwd         現地
./functions/help        助言
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
tag                  付箋
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

##### Firebase Emulator

`make emulator` to start Firebase Emulator Suite.
Emulator UI can be viewed at `http://0.0.0.0:4000`.

### Develop

#### Back-End

##### Infrastructure

Change Directory to `./pulumi`.
Then, `pip install -r requirements.txt` to install dependencies.

##### Cloud Functions for Firebase

Change Directory to `./functions`.
Then, `pip install -r requirements.txt` to install dependencies.

#### Front-End

Change Directory to `./`.

`make debug` to preview the site on Chrome.

### Test

`make test` to test and generate coverage report.

### Document

See [Wiki](https://github.com/shin-sforzando/yomutube/wiki).

#### CHANGELOG

`make tag VERSION=vX.Y.Z` to update [CHANGELOG.md](./CHANGELOG.md) and tag.
`vX.Y.Z` must be in accordance with [semver](https://semver.org).

`git push origin --tags` to push all tags.

## Misc

This repository is [Commitizen](https://commitizen.github.io/cz-cli/) friendly, following [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow).
See [CONTRIBUTING.md](./CONTRIBUTING.md) for details.

### LICENSE

See [LICENSE](./LICENSE).

### Contributors

- [sforzando LLC. and Inc.](https://sforzando.co.jp/)
  - [Shin'ichiro Suzuki](https://github.com/shin-sforzando)
