env:
	python -m venv ligo-env
	./ligo-env/bin/pip install -e .

activate:
	@echo "Run this command to activate the environment:"
	@echo "source ligo-env/bin/activate"

html:
	myst build --html

clean:
	rm figures/*.png audio/*.wav 
    rm -r _build/*


help:
	@echo "Available targets:"
	@echo "  env   - Install package and dependencies with pip"
    @echo "  activate - Show command to activate the environment"
	@echo "  html  - Build HTML site with MyST"
	@echo "  clean - Remove figures, audio and _build folders"
	@echo "  help  - Show this help message"

.PHONY: all env html clean help
