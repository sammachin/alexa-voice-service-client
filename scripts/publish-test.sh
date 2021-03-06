#!/bin/bash
rm -rf build
rm -rf dist
pandoc --from=markdown --to=rst --output=README.rst README.md
python setup.py bdist_wheel
twine upload -r pypitest dist/*
