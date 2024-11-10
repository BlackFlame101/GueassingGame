# Makefile

all: readme

readme:
	@echo "Project Title: Guessing Game" > README.md
	@echo Created on $$(date +%D) at $$(date +%H:%M:%S) >> README.md
	@echo "Number of lines in guessinggame.sh: $(shell cat guessinggame.sh | wc -l)" >> README.md
	@echo "" >> README.md

.PHONY: all readme

