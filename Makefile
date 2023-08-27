# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

OPEN_TARGET := http://0.0.0.0:8000/

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default open hide reveal clean help

default: ## 常用

init: ## 初期
ifeq ($(OS_NAME),Darwin)
	brew install git-cliff
	brew install git-secret
	brew install direnv
	brew install pre-commit
	brew install pulumi/tap/pulumi
	brew install --cask google-cloud-sdk
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

clean: ## 掃除
	find . -type f -name "*.log" -prune -exec rm -rf {} +
	find . -type d -name "__pycache__" -exec rm -rf {} +
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process is complete." ; fi

help: ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
