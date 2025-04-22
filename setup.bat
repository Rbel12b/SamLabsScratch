@echo off

git submodule update --init --recursive

cd scratch-vm
call npm install
call npm link
cd ..\scratch-gui
call npm install
call npm link scratch-vm
