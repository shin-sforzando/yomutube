# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

CMD_PULUMI := pulumi --cwd $(MAKEFILE_DIR)
OPEN_TARGET := http://0.0.0.0:8000/

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default setup open hide reveal check test clean help cwd

default: ## 常用

setup: ## 準備
ifeq ($(OS_NAME),Darwin)
	brew install firebase-cli
	brew install pulumi/tap/pulumi
	brew install --cask google-cloud-sdk
endif
	direnv allow
	pre-commit install
	@if [ $(OS_NAME) = "Darwin" ]; then say "The setup process of Pulumi is complete." ; fi

open: ## 閲覧
	@if [ $(OS_NAME) = "Darwin" ]; then open ${OPEN_TARGET} ; fi

hide: ## 秘匿
	git secret hide -vm

reveal: ## 暴露
	git secret reveal -vf

check: ## 検証
	pre-commit run --all-files

test: ## 試験
	$(MAKEFILE_DIR)/venv/bin/python -m unittest

clean: ## 掃除
	find . -type f -name "*.log" -prune -exec rm -rf {} +
	find . -type d -name "__pycache__" -exec rm -rf {} +
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process of Pulumi is complete." ; fi

cwd: ## 現地
	@echo $(MAKEFILE_DIR)
	@echo $(CMD_PULUMI)

help: ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "./pulumi/\033[36m%-11s\033[0m %s\n", $$1, $$2}'
