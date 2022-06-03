chcp 65001

@echo off

:A

set input_strong =

echo -------------------------------------------------------------
echo Web更新を行う場合は、replaceと入力してください。
echo -------------------------------------------------------------

color b0

set /P input_strong="input:"

echo %input_strong%

pause

if %input_strong%==replace (
    git add .
    git commit -m "commit"
    git push origin master
) else (
    goto :A
)

exit