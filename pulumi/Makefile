# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

OPEN_TARGET := http://0.0.0.0:8000/

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default open hide reveal format test clean help cwd

default: ## 常用

init: ## 初期
ifeq ($(OS_NAME),Darwin)
	brew install firebase-cli
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

format: ## 整形
	pre-commit run --all-files

test: ## 試験
	$(MAKEFILE_DIR)/venv/bin/python -m unittest

clean: ## 掃除
	find . -type f -name "*.log" -prune -exec rm -rf {} +
	find . -type d -name "__pycache__" -exec rm -rf {} +
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process is complete." ; fi

cwd: ## 現地
	@echo $(MAKEFILE_DIR)

help: ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "./pulumi/\033[36m%-11s\033[0m %s\n", $$1, $$2}'
