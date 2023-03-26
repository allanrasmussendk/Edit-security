@echo off
REM This is a script that uses a odd bug in the NTFS file system running on Windows,
REM     to hide data from easy read without the "password".
REM Note: Deleting the created Data.txt file (Which doesn't contain the hidden data), 
REM     will also delete the hidden data (apparently).
setlocal
SET /P PASSWORD="Enter password: "
if not exist Data.txt (
    REM Password is not set => Create a new file with entered password
    echo No secret here > Data.txt
    echo This is "secure" data > Data.txt:%PASSWORD%.txt
    notepad Data.txt:%PASSWORD%.txt
    goto END
)

SET WRONG=Wrong password!!!
SET DATA=%WRONG%
SET /P DATA= < Data.txt:%PASSWORD%.txt
if "[%DATA%]"=="[%WRONG%]" (
    REM cls is a hack to remove "Den angivne fil blev ikke fundet." (Danish locale) error message. 2>nul can't be used.
    cls
    echo Wrong password
    pause
    goto END
)

REM Edit or view the "secure" data
start notepad Data.txt:%PASSWORD%.txt

:END
endlocal
