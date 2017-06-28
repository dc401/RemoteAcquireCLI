@ECHO OFF
REM CMD CLI Memory Acquisition Win 64 bit hosts
REM dchow[AT]xtecsystems.com - 20170627
REM cmd /c START /MIN \\foo\script\tanium-mem-win64-acq-test.bat <-- run via Tanium push
REM Why you can't hide CMD https://www.howtogeek.com/131597/can-i-run-a-windows-batch-file-without-a-visible-command-prompt/
REM Would use PowerShell hidden but most users don't have Set-Execution untrust
REM *NOTICE* cmd.exe WILL go away in later updates or versions of Windows per Microsoft announcement
ECHO -- DO NOT CLOSE -- IT/INFOSEC MAINTENANCE -- DO NOT CLOSE -- 
FOR /F "USEBACKQ" %%i IN (`hostname.exe`) DO SET HVAR=%%i
SET DSTPATH=\\foo\encase\test\mem\
SET E01FILE=_MEM
REM ECHO Variable Host %HVAR%
REM ECHO Variable Path %DSTPATH%
REM ECHO Variable Filename %E01FILE%
winen64.exe -p "%DSTPATH%%HVAR%%E01FILE%" -d 1 -n foo -m "%HVAR% MEM" -c 000 -e CIRT -r 000
EXIT

