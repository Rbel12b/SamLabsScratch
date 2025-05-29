#!/bin/bash

git submodule update --init --recursive
cd ./scratch-vm
npm install
npm link
cd ../scratch-gui
npm install
npm link scratch-vm
cd ../scratch-samlabs
npm run setup-dev