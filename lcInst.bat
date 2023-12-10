@echo off&&cls
set link="https://github.com/m-ood/generalPS/releases/download/%%2B/lc.zip"
echo %link%
@(for /F %%B in ('echo prompt $E ^| cmd') do @set "ESC=%%B")

if not exist ""%~dp0lc.zip"" (
    (@powershell -command "Import-Module BitsTransfer;Start-BitsTransfer https://github.com/idgafmood/generalPS/releases/download/%%2B/lc.zip '%~dp0lc.zip' ")
)
rem (@powershell -command "$url='%link%';(New-Object Net.WebClient).DownloadFile($url, 'lc.zip')")
rem (@powershell -command "$ProgressPreference = 'SilentlyContinue';Invoke-WebRequest -UseBasicParsing -verbose -Uri https://github.com/idgafmood/generalPS/releases/download/%%2B/lc.zip -OutFile ""%~dp0lc.zip""")


(@powershell -command "expand-archive -force '%~dp0lc.zip' -DestinationPath '%~dp0'")
(del /F /Q "lc.zip")


cls

start "" "steam://rungameid/480"
start "" "steam://install/480"
@echo attempting to run spacewar

@echo %ESC%[101m%ESC%[91m___________________________________________________________________________________________________________________%ESC%[0m
@echo %ESC%[101m%ESC%[91m___________________________________________________________________________________________________________________%ESC%[0m
@echo.
@echo.
@echo.
@echo %ESC%[96mgo to steam and install spacewar%ESC%[0m
@echo %ESC%[96mthen press any key%ESC%[0m
@echo.
@echo.
@echo.
@echo %ESC%[101m%ESC%[91m___________________________________________________________________________________________________________________%ESC%[0m
@echo %ESC%[101m%ESC%[91m___________________________________________________________________________________________________________________%ESC%[0m
pause
cls


@taskkill /f /im "steam.exe"

@echo %ESC%[101m%ESC%[91m___________________________________________________________________________________________________________________%ESC%[0m
@echo %ESC%[101m%ESC%[91m___________________________________________________________________________________________________________________%ESC%[0m
@echo.
@echo.
@echo.
@echo %ESC%[96mre-open steam%ESC%[0m
@echo.
@echo.
@echo.
@echo %ESC%[101m%ESC%[91m___________________________________________________________________________________________________________________%ESC%[0m
@echo %ESC%[101m%ESC%[91m___________________________________________________________________________________________________________________%ESC%[0m
pause
cls