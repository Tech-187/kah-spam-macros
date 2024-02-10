@echo off
setlocal enabledelayedexpansion

set /p "wait_amount=Enter the wait delay here:"

set "output="

set /a "wait_amount=wait_amount * 10"

for /l %%i in (1,1,%wait_amount%) do (
    echo #####>>templinebreaks.txt
)

type templinebreaks.txt | clip
del templinebreaks.txt
echo It's in your clipboard now, paste that into KAS
timeout 5 > NUL
exit