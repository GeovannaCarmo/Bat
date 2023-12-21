@echo off
title Servicos de Rede
mode 60,30
:rede
cls
echo.
echo -----------------------
echo    Servicos de Rede
echo -----------------------
echo [N]AVEGAR NA INTERNET
echo [T]ESTAR CONEXAO DE REDE
echo [O]BTER IP DA MAQUINA
echo [R]ETORNAR AO MENU
echo.

set /p op= Selecione uma opcao:

if /i %op% == n ( goto:net )
if /i %op% == t ( goto:conexao )
if /i %op% == o ( goto:ip )
if /i %op% == R ( goto:retornar ) else (
        echo.
        echo Opcao invalida!
        echo.
        pause
        goto:rede )

:net
set /p site=Digite o site que deseja acessar:
start %site%
goto:rede

:conexao
set /p conexao=Digite o endereco IP ou pagina web:
ping %conexao% -t
goto:rede

:ip
ipconfig 
pause
goto:rede

:retornar
echo.
set /p resp= Deseja retornar para o menu Principal? [S/N]
if /i %resp% == s ( call menuPrincipal.bat) else ( goto:rede )