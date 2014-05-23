Tesseract merge script
======================

This is bash script, which

- extract and download images from HTML file
- merge images into one
- enlarge merged image
- run tesseract OCR to read the whole image

Dependencies
============

- tesseract-ocr
- imagemagick

Usage
=====

`` bash
./ocr-extract.sh /path/to/file.html
``
