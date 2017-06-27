@ECHO OFF
REM CMD CLI Logical C HDD Acquisition Win hosts
REM dchow[AT]xtecsystems.com 20170627
REM cmd /c START /MIN \\foo\script\tanium-phyhdd-win64-acq-test.bat <-- run via Tanium push
REM Why you can't hide CMD https://www.howtogeek.com/131597/can-i-run-a-windows-batch-file-without-a-visible-command-prompt/
REM Would use PowerShell hidden but most users don't have Set-Execution untrust
REM *NOTICE* cmd.exe WILL go away in later updates or versions of Windows per Microsoft announcement
ECHO -- DO NOT CLOSE -- IT/INFOSEC MAINTENANCE -- DO NOT CLOSE -- 
FOR /F "USEBACKQ" %%i IN (`hostname.exe`) DO SET HVAR=%%i
SET DSTPATH=\\foo\encase\test\logical\
SET E01FILE=_Logical
winacq.exe -p "%DSTPATH%%HVAR%%E01FILE%" -d 1 -n foo -m "%HVAR% Logical C" -e CIRT -r 000 -c 000 -vol C -v
EXIT

