# YomuTube

[![Last Commit](https://img.shields.io/github/last-commit/shin-sforzando/yomutube)](https://github.com/shin-sforzando/yomutube/graphs/commit-activity)
[![CI for Front-End](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-front.yml/badge.svg)](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-front.yml)
[![CI for Back-End](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-back.yml/badge.svg)](https://github.com/shin-sforzando/yomutube/actions/workflows/ci-back.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A service that watches YouTube on behalf of you.

- [Prerequisites](#prerequisites)
  - [Common](#common)
  - [Back-End](#back-end)
  - [Front-End](#front-end)
- [How to](#how-to)
  - [Setup](#setup)
  - [Document](#document)
    - [CHANGELOG](#changelog)
- [Misc](#misc)

## Prerequisites

### Common

- [direnv](https://direnv.net)

### Back-End

- Google Cloud SDK (Version `444.0.0` or higher)
  - Pulumi (Version `3.79.0` or higher)

### Front-End

- Flutter SDK (Version `3.13.1` or higher)

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

### Document

#### CHANGELOG

To update `CHANGELOG.md` manually,

```shell
git cliff --output CHANGELOG.md
```

## Misc

(T. B. D.)
