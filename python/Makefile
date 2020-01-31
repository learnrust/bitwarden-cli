#	python3 setup.py --command-packages=click_man.commands man_pages
release: test
	echo "run inside of a pipenv shell"
#	python3 setup.py --command-packages=click_man.commands 
	python3 setup.py sdist
#	python3 setup.py bdist_wheel
#	twine upload -u birlorg -s -i 0x24DC8628B3667566 dist/*
	echo "also run ../docs/make html"
	echo "also fsl tag!"
clean:
	rm -rf bitwarden/__pycache__
	rm -rf tests/__pycache__
	rm -rf dist/
	rm -rf build/
test:
	/usr/bin/py.test-3.6

install: 
	sudo python3 -m easy_install dist/bitwarden-0.4.0-py3.6.egg 
.PHONY: release test
