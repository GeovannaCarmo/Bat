@echo off
title SISTEMAS DE INFORMAÇÃO att.1
mode 60,30
color 0d
echo.

:login
cls
echo =========================
echo    LOGIN DE USUARIO
echo =========================
set/p usuario=Digite o usuario para login: 
if %usuario% == fatec (goto:senha) else (
   echo.
   echo ---------------------
   echo   Usuario Invalido
   echo ---------------------
   pause > nul
   goto login)

:senha
cls
echo =========================
echo          SENHA
echo =========================
set/p senha=Digite a senha para login: 
if %senha% == 123 (goto:menu) else (
   echo.
   echo ---------------------
   echo  Senha Invalida
   echo ---------------------
   pause > nul
   goto senha)

:menu
cls
echo =========================
echo       Menu Principal
echo =========================
echo [P] Pacote office
echo [S] Servicos de rede
echo [A] Aplicativos windows
echo [E] Encerrar sessao
echo [F] Finalizar programa
echo =========================
echo.
set /p op=Escolha sua Opcao:

if /i %op% == P (goto:office)
if /i %op% == S (goto:rede)
if /i %op% == A (goto:windows)
if /i %op% == E (goto:encerrar)
if /i %op% == F (goto:finalizar) else (
   echo.
   echo ---------------------
   echo   Opcao Invalida !
   echo ---------------------
   pause > nul
   goto menu)

:office
cls
echo =========================
echo       Pacote Office
echo =========================
echo [W] Word
echo [E] Excel
echo [A] Access
echo [P] Power Point
echo [R] Retornar ao menu
echo =========================
echo.
set /p op=Escolha sua Opcao:

if /i %op% == W (goto:texto)
if /i %op% == E (goto:planilha)
if /i %op% == A (goto:access)
if /i %op% == P (goto:slides)
if /i %op% == R (goto:menu) else (
   echo.
   echo ---------------------
   echo   Opcao Invalida !
   echo ---------------------
   pause > nul
   goto office)

:rede
cls
echo =========================
echo    SERVICOS DE REDE
echo =========================
echo [N] Navegar na internet
echo [T] Testar conexao de rede
echo [O] Obter o ip da maquina
echo [R] Retornar ao menu
echo =========================
echo.
set /p op=Escolha sua Opcao:

if /i %op% == N (goto:web)
if /i %op% == T (goto:teste)
if /i %op% == O (goto:ip)
if /i %op% == R (goto:menu) else (
   echo.
   echo ---------------------
   echo   Opcao Invalida !
   echo ---------------------
   pause > nul
   goto rede)

:windows
cls
echo =========================
echo   APLICATIVOS DO WINDOWS
echo =========================
echo [C] Calculadora
echo [T] Teclado Virtual
echo [W] Windows explorer
echo [P] Paint
echo [B] Bloco de Notas
echo [R] Retornar ao menu
echo =========================
echo.
set /p op=Escolha sua Opcao:

if /i %op% == C (goto:calculadora)
if /i %op% == T (goto:teclado)
if /i %op% == W (goto:explorer)
if /i %op% == P (goto:paint)
if /i %op% == B (goto:notas)
if /i %op% == R (goto:menu) else (
   echo.
   echo ---------------------
   echo   Opcao Invalida !
   echo ---------------------
   pause > nul
   goto windows)


rem SERVIÇOS DE REDE
:web
set /p site=Digite o endereco da pagina web:
start %site%
goto:rede

:teste
echo.
set /p conexao=Digite o endereco IP ou pagina web:
ping %conexao% -t
goto:rede

:ip
ipconfig/all
pause > nul
goto:rede

rem APLICATIVOS
:teclado
start osk.exe
goto:windows

:calculadora
start calc1.exe
goto:windows

:explorer
start explorer.exe
goto:windows

:paint
start mspaint.exe
goto:windows

:notas
start notepad.exe
goto:windows

rem OFFICE
:texto
start winword.exe
goto:office

:planilha
start excel.exe
goto:office

:access
start MSACCESS.EXE
goto:office

:slides
start powerpnt.exe
goto:office

:encerrar
echo.
set /p resp=Deseja realmente encerrar a sessao? [S/N]:
if /i %resp% == s (goto:login) else (goto:menu)

:finalizar
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% == s (exit) else (goto:menu)