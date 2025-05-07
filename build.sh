#!/bin/bash

git clone https://github.com/rbel12b/tm2scratch scratch-gui/tm2scratch --depth=1

cd ./scratch-samlabs && npm run build

cd ../scratch-gui 
sh ./tm2scratch/install.sh
npm run build
cd ..

cp -r ./scratch-samlabs/dist ./scratch-gui/build

cd scratch-gui
rm -rf node_modules/scratch-vm/src/extensions/scratch3_tm2scratch node_modules/scratch-vm/src/extension-support/extension-manager.js
mv node_modules/scratch-vm/src/extension-support/extension-manager.js_orig node_modules/scratch-vm/src/extension-support/extension-manager.js

rm -rf src/lib/libraries/extensions/tm2scratch src/lib/libraries/extensions/index.jsx
mv src/lib/libraries/extensions/index.jsx_orig src/lib/libraries/extensions/index.jsx

rm -rf ./tm2scratch