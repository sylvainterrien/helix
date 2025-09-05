#!/bin/sh

export HELIX_DISABLE_AUTO_GRAMMAR_BUILD=1
export HELIX_DEFAULT_RUNTIME=$(realpath ./runtime/)

cargo install --profile opt --config 'build.rustflags="-C target-cpu=native"' --path helix-term --locked
