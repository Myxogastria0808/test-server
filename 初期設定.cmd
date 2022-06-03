chcp 65001

@echo off

:A

set input_strong =

echo -----------------------------------------------------------------------------------------------
echo 初期設定を以下の手順に従って設定してください。
echo.
echo 1. Gitというソフトをダウンロードします。
echo. 
echo gitと入力してください。(入力後は、Gitのダウンロードサイトに飛びます。)
echo.
echo その後は、GitのSetupを起動してGitのインストールを行ってください。
echo.
echo 2. Gitの初期設定を行います。
echo.
echo setと入力してください。
echo.
echo 3. GitHubにログインします。
echo.
echo githubと入力し、GitHubのサイトでログインを行ってください。(入力後は、GitHubのサイトに飛びます。)
echo.
echo パスワード及び、ユーザー名は説明書に記載してありますのでご覧ください。
echo.
echo 4. HPの更新を行うためのファイル一式をダウンロードします。
echo.
echo startと入力してください。
echo.
echo 5. cmdを終了してください。
echo.
echo cmdを✕印を押して終了してください。
echo.
echo これで初期設定は完了しました。お疲れさまでした！
echo -----------------------------------------------------------------------------------------------

color b0

set /P input_strong="input:"

echo %input_strong%

pause


if %input_strong%==git (
    start https://git-scm.com/downloads/
    goto :A
) else if %input_strong%==set (
    git config --global user.name "Myxogastria0808"
    git config --global user.email "r.rstudio.c@gmail.com"
    goto :A
) else if %input_strong%==github (
    start https://github.com/
    goto :A
) else if %input_strong%==start {
    git clone https://github.com/Myxogastria0808/test-server.git
    goto :A
} else {
    goto :A
}

exit