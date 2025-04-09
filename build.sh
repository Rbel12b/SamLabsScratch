#!/bin/sh

cd ./scratch-samlabs && npm run build
cd ..
cd ./scratch-gui && npm run build
cd ..
cp -r ./scratch-samlabs/dist ./Scratch
cp -r ./scratch-gui/build/* ./Scratch