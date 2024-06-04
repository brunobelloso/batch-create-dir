@echo off
setlocal enabledelayedexpansion

rem Define the input file
set "input_file=structure.txt"

rem Read the input file line by line
for /f "tokens=*" %%A in (%input_file%) do (
    rem Extract the path and file name
    set "file=%%A"
    for %%B in ("!file!") do (
        set "path=%%~dpB"
        set "name=%%~nxB"
    )

    rem Extract the extension
    for /f "delims=" %%C in ("!name!") do set "extension=%%~xC"

    rem Create the directory structure if it doesn't exist
    if not exist "!path!" mkdir "!path!"

    rem Create the file with the respective extension
    copy nul "!path!!name!"
)

echo All files and folders created successfully.
