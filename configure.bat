@echo off
echo Clearing the failed CMake cache...
if exist "_Build\windows" rmdir /s /q "_Build\windows"

echo.
echo Loading Visual Studio Developer Environment...
call "G:\Microsoft Visual Studio\18\Community\VC\Auxiliary\Build\vcvars64.bat"

echo.
echo Running CMake...
cmake -S . -B _Build/windows -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-cl -DCMAKE_CXX_COMPILER=clang-cl -DCMAKE_PREFIX_PATH="G:/Qt/6.11.2/msvc2022_64"

echo.
pause