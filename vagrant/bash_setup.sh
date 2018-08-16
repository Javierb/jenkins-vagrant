#!/bin/bash

# Run this as not privilged user so it takes effect.
# Set locales to persist
echo "export LANGUAGE=en_US.UTF-8" >> "${HOME}/.bashrc"
echo "export LANG=en_US.UTF-8" >> "${HOME}/.bashrc"
echo "export LC_ALL=en_US.UTF-8" >> "${HOME}/.bashrc"
