#!/bin/bash

echo "Building project..."

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Create static directory to ensure Vercel doesn't throw a missing folder error
mkdir -p staticfiles_build/static

# Collect static files
python3 manage.py collectstatic --noinput --clear

echo "Build process completed"