@echo off

cd scratch-samlabs
call npm run build
cd ..\scratch-gui
call npm run build
cd ..

xcopy /E /I /Y scratch-samlabs\dist Scratch\dist
xcopy /E /I /Y scratch-gui\build\* Scratch\
