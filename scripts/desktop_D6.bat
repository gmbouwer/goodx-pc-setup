@echo off

REM --- Set default installation paths ---

set DELPHI_6=c:\borland\Delphi6
set BPL_PATH=c:\kode\bpl
set DXVCL_1=c:\kode\Developer.Express.VCL.D6
set THIRDPARTY_ROOT=c:\kode\third_party_resources

set MLPack=%BPL_PATH%\MLPack.bpl
set ThirdP=%BPL_PATH%\Thrd_party.bpl
set KBMMem=%BPL_PATH%\kbmMemD6Des.bpl

REM --- Create environment variables for future use ---

setx DELPHI_6 "%DELPHI_6%" /m
setx DXVCL_1 "%DXVCL_1%" /m
setx ZEOS_6 "%THIRDPARTY_ROOT%\zeos6-latest" /m
setx ZEOS_7 "%THIRDPARTY_ROOT%\zeos7-latest" /m
setx INDY "%THIRDPARTY_ROOT%\indy_10" /m


:: Install Delphi 6
echo Installing Delphi 6...
start /wait %DELPHI_6%\Setup.exe -s -SMS -D7ZIP="%CD%\7za.exe" -DINSTALLPATH="%DELPHI_6%" -DYES=1


REM --- Install third-party libraries ---

:: Install ZEOS 6
reg add "HKCU\Software\Borland\Delphi\6.0\Known Packages" /d "Zeos Database Components (6.6.4)" /t REG_SZ /v "%ZEOS_6%\packages\delphi6\build\ZComponent60.bpl" /f

:: Install Indy 10
reg add "HKCU\Software\Borland\Delphi\6.0\Known Packages" /d "Indy 10 Protocols Design Time" /t REG_SZ /v "%INDY%\D6\dclIndyProtocols60.bpl" /f
reg add "HKCU\Software\Borland\Delphi\6.0\Known Packages" /d "Indy 10 Core Design Time" /t REG_SZ /v "%INDY%\D6\dclIndyCore60.bpl" /f

:: Install multilang
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /d "TMultiLang Designtime Package" /t REG_SZ /v "%MLPack%" /f

:: Install kbmMemTable
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /d "kbmMemTable Designtime" /t REG_SZ /v "%KBMMem%" /f

:: Install misc 3rd party
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /d "Third party components" /t REG_SZ /v "%ThirdP%" /f

:: Install Dev express
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dclcxLibraryVCLD6.bpl" /d "Express Cross Platform Library (VCL Edition) by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxmdsd6.bpl" /d "ExpressMemData by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxdbtrd6.bpl" /d "ExpressDBTree by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxOrgCD6.bpl" /d "ExpressOrgChart by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxDBOrd6.bpl" /d "ExpressDBOrgChart by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dclcxPageControlVCLD6.bpl" /d "Express Cross Platform PageControl (VCL Edition) by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dclcxExtEditorsVCLD6.bpl" /d "ExpressExtendedEditors Library 5 (VCL Edition) by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dclcxEditorsVCLD6.bpl" /d "ExpressEditors Library 5 (VCL Edition) by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dclcxTreeListVCLD6.bpl" /d "ExpressQuantumTreeList 4 (VCL Edition) by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dclcxGridVCLD6.bpl" /d "ExpressQuantumGrid 5 (VCL Edition) by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxBarD6.bpl" /d "ExpressBars by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxBarDBNavD6.bpl" /d "ExpressBars DBNavigator by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxBarExtDBItemsD6.bpl" /d "ExpressBars extended DB items by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxBarExtItemsD6.bpl" /d "ExpressBars extended items by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxDockingD6.bpl" /d "ExpressDocking Library by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxsbD6.bpl" /d "ExpressSideBar by Developer Express Inc." /t REG_SZ /f
reg add "HKCU\SOFTWARE\Borland\Delphi\6.0\Known Packages" /v "%DXVCL_1%\Library\Delphi6\dcldxtrmdd6.bpl" /d "ExpressTreePrintedDataSet by Developer Express Inc." /t REG_SZ /f

echo Done.