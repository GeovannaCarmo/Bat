@echo off 
title - PACOTE OFFICE
mod 60, 30
color 09
:inicio 
cls 
echo.
echo ====================================================================
echo /  ¦¦¦¦¦¦+     ¦¦¦¦¦¦¦+    ¦¦¦¦¦¦¦+    ¦¦+     ¦¦¦¦¦¦+    ¦¦¦¦¦¦¦+ /
echo / ¦¦+---¦¦+    ¦¦+----+    ¦¦+----+    ¦¦¦    ¦¦+----+    ¦¦+----+ /
echo / ¦¦¦   ¦¦¦    ¦¦¦¦¦+      ¦¦¦¦¦+      ¦¦¦    ¦¦¦         ¦¦¦¦¦+   /
echo / ¦¦¦   ¦¦¦    ¦¦+--+      ¦¦+--+      ¦¦¦    ¦¦¦         ¦¦+--+   /
echo / +¦¦¦¦¦¦++    ¦¦¦         ¦¦¦         ¦¦¦    +¦¦¦¦¦¦+    ¦¦¦¦¦¦¦+ /
echo /  +-----+     +-+         +-+         +-+     +-----+    +------+ /
echo ====================================================================
echo.
echo ====================================================================                
echo /                        [1] Executar Word                         /
echo /                        [2] Executar Excel                        /
echo /                        [3] Executar PowerPoint                   /
echo /                        [4] Executar Access                       /
echo /                        [5] Voltar ao Menu anterior               /
echo /                        [6] Encerrar o Programa                   /
echo ====================================================================
set /p op=Escolha sua Opcao:

if %op% == 1 (goto:texto)
if %op% == 2 (goto:planilha)
if %op% == 3 (goto:slides)
if %op% == 4 (goto:access)
if %op% == 5 (call MENUPRINCIPAL.bat)
if %op% == 6 (goto:sair) else (
echo.
echo ====================================================================
echo *                                                                  *
echo *                                                                  *
echo *               ¦¦¦¦¦¦¦  ¦¦¦¦¦¦+   ¦¦¦¦¦¦+   ¦¦¦¦¦¦+               *
echo *               ¦¦+----  ¦¦+--¦¦   ¦¦+--¦¦¦  ¦+---¦¦+              *
echo *               ¦¦¦¦¦+   ¦¦¦¦¦¦+   ¦¦¦¦¦¦+¦  ¦¦   ¦¦¦              *
echo *               ¦¦+--+   ¦¦+--¦¦   ¦¦+--¦¦¦  ¦¦   ¦¦¦              *
echo *               ¦¦¦¦¦¦¦  ¦¦¦  ¦¦   ¦¦¦  ¦¦+  ¦¦¦¦¦¦++              *
echo *               +------  +-+  +-+  +-+  +-+  +-----+               *
echo *                                                                  *
echo *                                                                  *
echo ====================================================================
Pause  > nul 
goto inicio 
:texto 
start winword.exe
goto inicio

:planilha
start excel.exe
goto inicio 

:slides
start powerpnt.exe
goto inicio

:access
start msaccess.exe
goto inicio


:sair
echo.
set /p resp=Deseja realmente sair? [S/N] 
if /i %resp% == s (exit) else (goto:inicio)

 