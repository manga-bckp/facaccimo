@echo off
pushd "%~dp0"

echo.
echo [1/2] Starting CORS proxy (global install, port 3000)...
start "CORS Proxy" cmd /k "cors-proxy run --port 3000"

timeout /t 1 >nul

echo [2/2] Starting Vue dev server...
start "Vue Dev Server" cmd /k "set NODE_OPTIONS=--openssl-legacy-provider && set NODE_ENV=development && npm run serve"

popd
echo.
echo Done. Watch the other windows for errors.
pause >nul