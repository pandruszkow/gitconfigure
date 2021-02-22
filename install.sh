#!/bin/sh
cp .gitconfig.local.new ~/.gitconfig.local
nano ~/.gitconfig.local
ln .gitconfig ~
