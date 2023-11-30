# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

OPEN_TARGET :=

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default setup open hide reveal generate-api check test preview clean help cwd

default: ## 常用
	make preview

setup: ## 準備
ifeq ($(OS_NAME),Darwin)
	brew install openapi-generator
endif
	direnv allow
	@if [ $(OS_NAME) = "Darwin" ]; then say "The setup process of Cloud Functions is complete." ; fi

open: ## 閲覧
	@if [ $(OS_NAME) = "Darwin" ]; then open ${OPEN_TARGET} ; fi

hide: ## 秘匿
	git secret hide -vm

reveal: ## 暴露
	git secret reveal -vf

generate-api: ## 生成
	openapi-generator generate --input-spec $(MAKEFILE_DIR)/api/YouTubeDataV3.yaml --generator-name python --config $(MAKEFILE_DIR)/api/generator-config.json --output $(MAKEFILE_DIR)/functions/api
	@if [ $(OS_NAME) = "Darwin" ]; then say "The API Client code generation process is complete." ; fi

check: ## 検証
	pre-commit run --all-files

test: ## 試験
	$(MAKEFILE_DIR)/venv/bin/pytest
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process of Cloud Functions is complete." ; fi

deploy: ## 反映
	echo "TODO: Not Implemented Yet!" 1>&2
	@if [ $(OS_NAME) = "Darwin" ]; then say "The deployment process of Cloud Functions is complete." ; fi

clean: ## 掃除
	find . -type f -name "*.log" -prune -exec rm -rf {} +
	find . -type d -name "__pycache__" -exec rm -rf {} +
	@if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process of Cloud Functions is complete." ; fi

cwd: ## 現地
	@echo $(MAKEFILE_DIR)

help: ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "./functions/\033[36m%-11s\033[0m %s\n", $$1, $$2}'
