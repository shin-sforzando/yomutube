# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

SUBDIRS := ./pulumi
.SILENT: $(SUBDIRS)

OPEN_TARGET := http://0.0.0.0:8000/

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default open hide reveal format test clean help FORCE

default: ## 常用

init: $(SUBDIRS) ## 初期
ifeq ($(OS_NAME),Darwin)
	brew install direnv
	brew install git-cliff
	brew install git-secret
	brew install lcov
	brew install pre-commit
endif
	direnv allow
	pre-commit install
	@if [ $(OS_NAME) = "Darwin" ]; then say "The initialization process is complete." ; fi

open: ## 閲覧
	@if [ $(OS_NAME) = "Darwin" ]; then open ${OPEN_TARGET} ; fi

hide: ## 秘匿
	git secret hide -vm

reveal: ## 暴露
	git secret reveal -vf

format: ## 整形
	pre-commit run --all-files

test: $(SUBDIRS) ## 試験
	flutter test --coverage
	genhtml coverage/lcov.info -o coverage/html

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
