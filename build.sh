#!/bin/bash

cd ./scratch-samlabs && npm run build
cd ../scratch-gui && npm run build
cd ..
cp -r ./scratch-samlabs/dist ./Scratch
cp -r ./scratch-gui/build/* ./Scratch