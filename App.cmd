chcp 65001

@echo off

:A

set input_strong =

echo -------------------------------------------------------------
echo Web更新のAppを開くにはcmdと入力してください.
echo -------------------------------------------------------------

color b0

set /P input_strong="input:"

echo %input_strong%

pause

if %input_strong%==cmd (
    start cmd
) else (
    goto :A
)

exit