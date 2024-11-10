# Makefile

all: readme

readme:
	@echo "Project Title: Guessing Game" > README.md
	@date='$(shell date)'; echo "Make run time: $(date)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(shell cat guessinggame.sh | wc -l)" >> README.md
	@echo "" >> README.md
	@cat guessinggame.sh >> README.md

.PHONY: all readme

