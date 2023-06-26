.PHONY: info install pdf watch open clean help

#------------------------------------------------------------------------------
# Detect OS
#
ifeq ($(OS),Windows_NT)
detected_OS := Windows
else
detected_OS := $(shell uname)
endif

#------------------------------------------------------------------------------
# GLOBALS
#
PROJECT_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
#PROJECT_DIR :=  $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
ifeq ($(detected_OS),Windows)
PROJECT_NAME := $(notdir $(patsubst %/,%,$(PROJECT_DIR)))
else
CURRENT_DIR := $(CURDIR)
PROJECT_NAME := $(shell basename "$(CURRENT_DIR)")
endif
TYPST_GITHUB := https://github.com/typst/typst
TYPST_VERSION := $$( typst -V )

OUTPUT_DIR := "05-pdf"
DOC_NAME := "main"

#------------------------------------------------------------------------------
# OS Specifics
#
ifeq ($(detected_OS),Windows)
	PDFVIEWER = 'start "" /max'
endif

ifeq ($(detected_OS),Darwin)
	PDFVIEWER = open
endif

ifeq ($(detected_OS),Linux)
	#SHELL = /bin/zsh
	SHELL = /bin/bash
	PDFVIEWER = xdg-open
endif

#------------------------------------------------------------------------------
# COMMANDS
#
.ONESHELL:

info: ## Information about the environemnt
	@echo "Environment Informations"
	@echo "  * Projectdir: $(PROJECT_DIR)"
	@echo "  * Projectname: $(PROJECT_NAME)"
	@echo "  * OS: $(detected_OS)"
	@echo "  * Pdfviewer: $(PDFVIEWER)"
	@echo "  * Typst: $(TYPST_VERSION)"

install: ## Install typst environment
ifeq ($(detected_OS),Windows)
	@echo "Install Typst for Windows"
	@cargo install --git https://github.com/typst/typst --tag v0.5.0
endif

ifeq ($(detected_OS),Darwin)
	@echo "Install Typst for MacOS"
	@brew install typst
endif

ifeq ($(detected_OS),Linux)
	@echo "Install Typst for Linux"
	cargo install --git https://github.com/typst/typst --tag v0.5.0
endif

pdf: ## Generate pdf from document
	@echo "--------------------------------------------------"
	@echo "-- Generate $(PROJECT_NAME)"
	@echo "--"
	@typst c $(DOC_NAME).typ
ifeq ($(detected_OS),Windows)
	@md $(OUTPUT_DIR) & move $(DOC_NAME).pdf "$(OUTPUT_DIR)/$(PROJECT_NAME).pdf"
else
	@mkdir -p $(OUTPUT_DIR) && mv $(DOC_NAME).pdf "$(OUTPUT_DIR)/$(PROJECT_NAME).pdf"
endif
	@make clean

watch: ## watch and rebuild the main if neccessary
	@typst w $(DOC_NAME).typ

open: ## Open the generated main
	@$(PDFVIEWER) $(DOC_NAME).pdf

clean: ## Clean all intermediate files
	@echo "--------------------------------------------------"
	@echo "-- Clean $(PROJECT_NAME)"
	@echo "--"
ifeq ($(detected_OS),Windows)
	@del /q /s 00-templates\*.pdf 2>nul
	@del /q /s 01-settings\*.pdf 2>nul
	@del /q /s 02-main\*.pdf 2>nul
	@del /q /s 03-tail\*.pdf 2>nul
	@del /q /s 04-resources\*.pdf 2>nul
else
	@rm 00-templates/*.pdf || true
	@rm 01-settings/*.pdf || true
	@rm 02-main/*.pdf || true
	@rm 03-tail/*.pdf || true
	@rm 04-resources/*.pdf || true
endif

help: ## Show this help
ifeq ($(detected_OS),Windows)
	@type $(MAKEFILE_LIST) | findstr /R /C:"^[a-zA-Z_-]..*:.*## .*$"
else
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; \
	{printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
endif

.DEFAULT_GOAL := help
