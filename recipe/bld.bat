md build
cd build

cmake -LAH -GNinja .. ^
	-DCMAKE_BUILD_TYPE=Release                              ^
	-DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%           ^
	-DCMAKE_FIND_ROOT_PATH=%LIBRARY_PREFIX%;%PREFIX%;%BUILD_PREFIX%    ^
	-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY
if errorlevel 1 exit 1
cmake --build .
if errorlevel 1 exit 1
cmake --install .
if errorlevel 1 exit 1

:: for backwards compatibility with previous make build
copy %LIBRARY_PREFIX%\lib\webp.lib %LIBRARY_PREFIX%\lib\libwebp.lib
if errorlevel 1 exit 1
copy %LIBRARY_PREFIX%\lib\webpdecoder.lib %LIBRARY_PREFIX%\lib\libwebpdecoder.lib
if errorlevel 1 exit 1
