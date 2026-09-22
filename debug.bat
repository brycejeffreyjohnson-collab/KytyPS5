@echo off
echo Loading Visual Studio Environment...

if not defined VSCMD_VER (
    call "G:\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat"
)

echo.
echo Launching Visual Studio Debugger...
devenv /debugexe "G:\PS5 Emulator\KytyPS5\_Build\windows\install\kyty_emulator.exe" --amd-cpu --graphics-debug-dump true --game "G:\PS5 Emulator\Games\[DLPSGAME.COM]-Ghost of Yotei 01.008 PPSA26344"