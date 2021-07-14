#!/bin/bash
python makesite.py
cd _site
python -m http.server 8000
