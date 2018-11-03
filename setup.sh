#! /bin/bash

function homebrew() {
  if ! type "brew" > /dev/null; then
    # Install homebrew.
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  brew bundle
}

function miniconda() {
  if ! type "conda" > /dev/null; then
    wget https://repo.continuum.io/miniconda/Miniconda3-3.7.0-Linux-x86_64.sh -O ~/miniconda.sh
    bash ~/miniconda.sh -b -p $HOME/miniconda
  fi
}

function gcloud() {
  if ! type "gcloud" > /dev/null; then
    wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-223.0.0-darwin-x86_64.tar.gz -O ~/
    tar -xzvf ~/google-cloud-sdk-223.0.0-darwin-x86_64.tar.gz
    ~/google-cloud-sdk/install.sh
  fi
}

function rust() {
  if ! type "rustc" > /dev/null; then
    curl https://sh.rustup.rs -sSf | sh
  fi
}

function setup() {
  homebrew
  miniconda
  gcloud
  rust
}

setup
