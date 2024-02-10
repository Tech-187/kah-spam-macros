@echo off
setlocal enabledelayedexpansion

:question
echo (1) add wait (2) add end (3) fix clipboard

set answer=
set /p answer=choose option: %=%

if /I %answer%==1 (
	call waitadder.bat
) else if /I %answer%==2 (
	(
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
		echo.
	) > templinebreaks2.txt
	echo( >> templinebreaks2.txt
	type templinebreaks2.txt | clip
	del templinebreaks2.txt
	echo It's in your clipboard now, paste that into KAS
	timeout 5 > NUL
	exit
) else if /I %answer%==3 (
    echo off | clip
	echo Clipboard fixed
	timeout 5 > NUL
	exit
) else (
	echo invalid option, choose again
	goto :question
)

pause > NUL
