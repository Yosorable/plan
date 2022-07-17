@ECHO OFF
set current=%cd%
go build -o ./bin/ .
IF %errorlevel% NEQ 0 GOTO END
IF %errorlevel% EQU 0 GOTO OK

:OK
ECHO -----------------
ECHO ^| build success ^|
ECHO -----------------
cd bin/
plan
GOTO END

:END
@ECHO ON