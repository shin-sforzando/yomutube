# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

SUBDIRS := ./pulumi
.SILENT: $(SUBDIRS)

OPEN_TARGET := http://0.0.0.0:8000/
VERSION := $(shell git tag --sort=-v:refname | head -n 1)

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default setup open hide reveal check emulator debug test build deploy tag clean help FORCE

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
	brew install openapi-generator
	brew install pre-commit
	brew install --cask flutter
endif
	direnv allow
	dart pub global activate flutterfire_cli
	firebase experiments:enable webframeworks
	pre-commit install && pre-commit autoupdate
	@if [ $(OS_NAME) = "Darwin" ]; then say "The setup process is complete." ; fi

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

debug: ## 確認
	flutter pub get
	flutter run --debug --verbose --device-id chrome

test: $(SUBDIRS) ## 試験
	flutter test --coverage
	genhtml coverage/lcov.info --output-directory coverage/html

build: ## 構築
	flutter build web --verbose --release

deploy: build ## 配備
	firebase deploy

tag: ## 付箋
	git cliff --tag $(VERSION) --output CHANGELOG.md
	git add CHANGELOG.md && git commit -m "docs: :notebook: update CHANGELOG.md to $(VERSION)"
	git tag $(VERSION)
	@if [ $(OS_NAME) = "Darwin" ]; then say "The tagging process is complete." ; fi

clean: $(SUBDIRS) ## 掃除
	find . -type f -name "*.log" -prune -exec rm -rf {} +
	flutter clean
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process is complete." ; fi

$(SUBDIRS): FORCE
	make -C $@ $(MAKECMDGOALS)

cwd: $(SUBDIRS)

help: $(SUBDIRS) ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

FORCE: ## 強制
