# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

SUBDIRS := ./pulumi ./functions
.SILENT: $(SUBDIRS)

OPEN_TARGET := http://0.0.0.0:8000/
VERSION := $(shell git tag --sort=-v:refname | head -n 1)

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default setup open hide reveal check emulator debug test build-runner build deploy tag clean pwd help FORCE

default: ## 常用
	make debug

setup: $(SUBDIRS) ## 準備
ifeq ($(OS_NAME),Darwin)
	brew install direnv
	brew install firebase-cli
	brew install git-cliff
	brew install git-secret
	brew install go-task
	brew install lcov
	brew install pre-commit
	brew install --cask flutter
endif
	direnv allow
	dart pub global activate flutterfire_cli
	firebase experiments:enable webframeworks
	pre-commit install && pre-commit autoupdate
	@if [ $(OS_NAME) = "Darwin" ]; then say "The setup process of Flutter Web is complete." ; fi

open: ## 閲覧
	@if [ $(OS_NAME) = "Darwin" ]; then open ${OPEN_TARGET} ; fi

hide: ## 秘匿
	git secret hide -vm

reveal: ## 暴露
	git secret reveal -vf

check: ## 検証
	pre-commit run --all-files

emulator: ## 模倣
	firebase emulators:start

debug: ## 試行
	flutter pub get
	flutter run --debug --web-renderer html --verbose --device-id chrome

test: $(SUBDIRS) ## 試験
	flutter test --coverage
	genhtml coverage/lcov.info --output-directory coverage/html
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process of Flutter Web is complete." ; fi

build-runner: ## 構築
	dart run build_runner build --delete-conflicting-outputs

build: ## 清書
	flutter clean
	flutter build web --web-renderer html --verbose

deploy: build $(SUBDIRS) ## 配備
	firebase deploy --only hosting
	@if [ $(OS_NAME) = "Darwin" ]; then say "The deployment process of Flutter Web is complete." ; fi

tag: ## 付箋
	git cliff --tag $(VERSION) --output CHANGELOG.md
	git add CHANGELOG.md && git commit -m "docs: :notebook: update CHANGELOG.md to $(VERSION)"
	git tag $(VERSION)
	@if [ $(OS_NAME) = "Darwin" ]; then say "The tagging process is complete." ; fi

clean: $(SUBDIRS) ## 掃除
	find . -type f -name "*.log" -prune -exec rm -rf {} +
	flutter clean
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process of Flutter Web is complete." ; fi

$(SUBDIRS): FORCE
	make -C $@ $(MAKECMDGOALS)

pwd: $(SUBDIRS)

help: $(SUBDIRS) ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

FORCE: ## 強制
