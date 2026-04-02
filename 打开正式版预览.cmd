@echo off
cd /d "%~dp0"
if not exist node_modules (
  echo Installing dependencies...
  call npm install
)
if not exist site-data.js (
  echo Building formal preview...
  call npm run build
)
start "" "%~dp0index.html"
