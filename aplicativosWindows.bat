@echo off
title Aplicativos Windows
mode 60,30
:pacote
cls
echo.
echo ------------------------
echo   Aplicativos Windows
echo -----------------------
echo [C]ALCULADORA
echo [T]ECLADO VIRTUAL
echo [W]INDOWS EXPLORER
echo [P]AINT
echo [B]LOCO DE NOTAS
echo [R]ETORNAR AO MENU
echo.

set /p op= Selecione uma opcao:

if /i %op% == C ( goto:cal )
if /i %op% == t ( goto:teclado )
if /i %op% == w ( goto:win )
if /i %op% == p ( goto:paint )
if /i %op% == b ( goto:bloco )
if /i %op% == r ( goto:retornar ) else (
        echo.
        echo Opcao invalida!
        echo.
        pause
        goto:pacote )

:cal
start calc.exe
goto:pacote

:teclado
start osk.exe
goto:pacote

:win
start explorer.exe
goto:pacote

:paint
start mspaint.exe
goto:pacote

:bloco
start notepad.exe
goto:pacote

:retornar
echo.
set /p resp= Deseja retornar para o menu Principal? [S/N]
if /i %resp% == s ( call menuPrincipal.bat) else ( goto:pacote )