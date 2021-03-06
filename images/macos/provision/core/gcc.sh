#!/bin/bash -e -o pipefail
source ~/utils/invoke-tests.sh

echo "Installing GCC@8 using homebrew..."
brew install gcc@8

echo "Installing GCC@9 using homebrew..."
brew install gcc@9

# https://github.com/actions/virtual-environments/issues/1280
echo "Installing GCC@10 using homebrew..."
brew install gcc@10
rm $(which gfortran)

invoke_tests "Common" "GCC"