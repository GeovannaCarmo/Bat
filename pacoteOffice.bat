@echo off
title Pacote Office
mode 60,30
:pacote
cls
echo.
echo -----------------------
echo      Pacote Office
echo -----------------------
echo [W]ORD
echo [E]XCEL
echo [A]CCESS
echo [P]OWER POINT
echo [R]ETORNAR AO MENU
echo.

set /p op= Selecione uma opcao:

if /i %op% == w ( goto:word )
if /i %op% == e ( goto:excel )
if /i %op% == a ( goto:access )
if /i %op% == p ( goto:power )
if /i %op% == R ( goto:retornar ) else (
        echo.
        echo Opcao invalida!
        echo.
        pause
        goto:pacote )

:word
start winword.exe
goto:pacote

:excel
start excel.exe
goto:pacote

:access
start MSACCESS.exe
goto:pacote

:power
start POWERPNT.exe
goto:pacote

:retornar
echo.
set /p resp= Deseja retornar para o menu Principal? [S/N]
if /i %resp% == s ( call menuPrincipal.bat) else ( goto:pacote )