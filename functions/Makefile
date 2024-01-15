# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

OPEN_TARGET :=

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default setup open hide reveal gen-models debug check test deploy clean pwd help

default: ## 常用
	make debug

setup: ## 準備
ifeq ($(OS_NAME),Darwin)
	brew install firebase-cli
	brew install --cask google-cloud-sdk
endif
	direnv allow
	@if [ $(OS_NAME) = "Darwin" ]; then say "The setup process of Cloud Functions is complete." ; fi

open: ## 閲覧
	@if [ $(OS_NAME) = "Darwin" ]; then open ${OPEN_TARGET} ; fi

hide: ## 秘匿
	git secret hide -vm

reveal: ## 暴露
	git secret reveal -vf

gen-models: ## 生成
	datamodel-codegen --input $(MAKEFILE_DIR)../api/YouTubeDataV3.yaml --output $(MAKEFILE_DIR)models.py
ifeq ($(OS_NAME),Darwin)
	sed -i '' 's/\\n/ /g' $(MAKEFILE_DIR)models.py
else
	sed -i 's/\\n/ /g' $(MAKEFILE_DIR)models.py
endif
	@if [ $(OS_NAME) = "Darwin" ]; then say "The model generating process of Cloud Functions is complete." ; fi

debug: ## 試行
	python main.py

check: ## 検証
	pre-commit run --all-files

test: ## 試験
	@echo "TODO: Not Implemented Yet!" 1>&2
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process of Cloud Functions is complete." ; fi

deploy: ## 反映
	firebase deploy --only functions
	@if [ $(OS_NAME) = "Darwin" ]; then say "The deployment process of Cloud Functions is complete." ; fi

clean: ## 掃除
	find . -type f -name "*.log" -exec rm -rf {} +
	find . -type d -name "__pycache__" -exec rm -rf {} +
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process of Cloud Functions is complete." ; fi

pwd: ## 現地
	@echo $(MAKEFILE_DIR)

help: ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "functions/\033[36m%-11s\033[0m %s\n", $$1, $$2}'
