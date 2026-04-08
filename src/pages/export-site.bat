@echo off
setlocal enabledelayedexpansion

REM Set output file (one level above pages directory)
set "output=..\all-astro-files.txt"

REM Clear the output file if it exists
if exist "%output%" del "%output%"

REM Loop through all .astro files recursively
for /r %%F in (*.astro) do (
    echo === %%~pnxF === >> "%output%"
    echo. >> "%output%"
    type "%%F" >> "%output%"
    echo. >> "%output%"
    echo. >> "%output%"
)

echo Done. All .astro files have been exported to %output%
pause