@echo off
title - Aplicativos Windows
mod 90,90
color 09
:inicio
cls
echo.
echo 0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
echo 0                                                                                               0
echo 0  ¦¦¦¦¦+  ¦¦¦¦¦¦+  ¦¦+      ¦¦+  ¦¦¦¦¦¦+  ¦¦¦¦¦+  ¦¦¦¦¦¦¦¦+ ¦¦+ ¦¦+   ¦¦+  ¦¦¦¦¦¦+  ¦¦¦¦¦¦¦+   0
echo 0 ¦¦+--¦¦+ ¦¦+--¦¦+ ¦¦¦      ¦¦¦ ¦¦+----+ ¦¦+--¦¦+ +--¦¦+--+ ¦¦¦ ¦¦¦   ¦¦¦ ¦¦+-¦¦¦¦+ ¦¦+----+   0
echo 0 ¦¦¦¦¦¦¦¦ ¦¦¦¦¦¦++ ¦¦¦      ¦¦¦ ¦¦¦      ¦¦¦¦¦¦¦¦    ¦¦¦    ¦¦¦ ¦¦¦   ¦¦¦ ¦¦¦¦¦+¦¦¦ ¦¦¦¦¦¦¦+   0
echo 0 ¦¦+--¦¦¦ ¦¦+---+  ¦¦¦      ¦¦¦ ¦¦¦      ¦¦+--¦¦¦    ¦¦¦    ¦¦¦ +¦¦+ ¦¦++ ¦¦¦¦++¦¦¦  +----¦¦¦  0
echo 0 ¦¦¦  ¦¦¦ ¦¦¦      ¦¦¦¦¦¦¦+ ¦¦¦ +¦¦¦¦¦¦+ ¦¦¦  ¦¦¦    ¦¦¦    ¦¦¦   +¦¦¦¦++ +¦¦¦¦¦¦++ ¦¦¦¦¦¦¦¦   0
echo 0 +-+  +-+ +-+      +------+ +-+ +-----+  +-+  +-+    +-+    +-+  +---+     +-----+  +------+   0
echo 0                                                                                               0
echo 0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
echo.
echo 0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
echo 0                                                                                               0
echo 0                   [1] Calculadora  =================  [4] Paint                               0
echo 0                   [2] Teclado Virtual ==============  [5] Bloco de Notas                      0
echo 0                   [3] Windows Explorer =============  [6] Retornar ao Menu                    0
echo 0                                                                                               0
echo 0                                                                                               0
echo 0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
echo.
set /p op=Escolha a Opcao Desejada:

if %op% == 1 (goto:calculadora)
if %op% == 2 (goto:teclado)
if %op% == 3 (goto:windows)
if %op% == 4 (goto:paint)
if %op% == 5 (goto:bloco)
if %op% == 6 (goto:menu) else (
echo.
echo 0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
echo 0                          ¦¦¦¦¦¦¦   ¦¦¦¦¦¦+    ¦¦¦¦¦¦+    ¦¦¦¦¦¦+                              0
echo 0                          ¦¦+----   ¦¦+--¦¦    ¦¦+--¦¦¦   ¦+---¦¦+                             0
echo 0                          ¦¦¦¦¦+    ¦¦¦¦¦¦+    ¦¦¦¦¦¦+¦   ¦¦   ¦¦¦                             0
echo 0                          ¦¦+--+    ¦¦+--¦¦    ¦¦+--¦¦¦   ¦¦   ¦¦¦                             0 
echo 0                          ¦¦¦¦¦¦¦   ¦¦¦  ¦¦    ¦¦¦  ¦¦+   ¦¦¦¦¦¦++                             0
echo 0                          +------   +-+  +-+   +-+  +-+   +-----+                              0
echo 0101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010
pause
goto inicio)


:calculadora
start calc.exe
goto inicio

:teclado 
start osk.exe
goto inicio 

:windows 
start msedge.exe
goto inicio 

:paint
start mspaint.exe
goto inicio

:bloco
start notepad.exe
goto inicio 

:menu
set /p resp=Deseja Retornar ao Menu? [S/N]
if /i %resp% == s (call MENUPRINCIPAL.bat) else (goto:inicio)
