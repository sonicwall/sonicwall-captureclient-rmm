@echo off
REM SonicWall Capture Client Installer
REM user variables: tenantId version
REM ========================================

REM Find If Capture Client is already installed
echo Device: %COMPUTERNAME%
if exist "C:\Program Files (x86)\SonicWall\Capture Client\SonicWallEnforcementService.exe" (
    rem CC exists
    echo SonicWall Capture Client is already installed
    exit 0
) else (
    rem CC does not exist, install on endpoint
    goto ccInstall
)

:ccInstall
echo Preparing MSI for silent install
set msiFileName=SonicWall Capture Client.%version%.%tenantId%.msi
echo version:%version% and tenantId:%tenantId% and msi name:%msiFileName%
rename "SonicWall Capture Client.msi" "SonicWall Capture Client.%version%.%tenantId%.msi"
echo Installing SonicWall Capture Client...
msiexec.exe /i "%msiFileName%" /l*v msi.log /qn
for %%? in (errors.log) DO (
               set /a varErrorSize=%%~z?
)
if !varErrorSize! gtr 210 (
               echo =========================================================
               echo Installation Log: Errors
               echo - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               type errors.log
               echo =========================================================
               echo.
               echo - Installation completed with errors. Please scrutinise logs.
               exit 1
)
echo Installed successful
exit 0
