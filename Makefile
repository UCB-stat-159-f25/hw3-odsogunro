env:
	python -m venv ./ligo-env
	./ligo-env/bin/pip install -e .

activate:
	@echo "Run this command to activate the environment:"
	@echo "source ./ligo-env/bin/activate"

html:
	myst build --html

github-pages:
	myst init --gh-pages

clean:
	@echo "Cleaning out and deleting - figures/*.png audio/*.wav"
	rm figures/*.png audio/*.wav
	@echo "Cleaning out and deleting - _build/"
	rm -r _build/
	@echo "Cleaning out and deleting - .github/"
	rm -r .github/

help:
	@echo "Available targets:"
	@echo "  env          - Install package and dependencies with pip"
	@echo "  activate     - Show command to activate the environment"
	@echo "  html         - Build HTML website with MyST"
	@echo "  github-pages - Deploy website to GitHub Pages"
	@echo "  clean        - Remove figures, audio and _build folders"
	@echo "  help         - Show this help message"

.PHONY: all env html github-pages clean help 
