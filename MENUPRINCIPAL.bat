@echo off
title MENU PRINCIPAL
mod 60, 30
color 09

:menu
cls
echo.
echo ****************************************************************** 				         
echo.*      ¦¦¦+   ¦¦¦+    ¦¦¦¦¦¦¦+    ¦¦¦+   ¦¦+    ¦¦+   ¦¦+        *   
echo.*      ¦¦¦¦+ ¦¦¦¦¦    ¦¦+----+    ¦¦¦¦+  ¦¦¦    ¦¦¦   ¦¦¦        *   
echo.*      ¦¦+¦¦¦¦+¦¦¦    ¦¦¦¦¦+      ¦¦+¦¦+ ¦¦¦    ¦¦¦   ¦¦¦        *   
echo.*      ¦¦¦+¦¦++¦¦¦    ¦¦+--+      ¦¦¦+¦¦+¦¦¦    ¦¦¦   ¦¦¦        *   
echo.*      ¦¦¦ +-+ ¦¦¦    ¦¦¦¦¦¦¦+    ¦¦¦ +¦¦¦¦¦    +¦¦¦¦¦¦++        *   
echo.*      +-+     +-+    +------+    +-+  +---+     +-----+         *  
echo ******************************************************************
echo.
echo ******************************************************************                                            
echo *                    [1] Pacote Office                           *
echo *                    [2] Servicos De Rede                        *
echo *                    [3] Aplicativos Windows                     *
echo *                    [4] Encerrar Sessao                         *
echo *                    [5] Finalizar o Programa                    *
echo ******************************************************************
echo.
set /p op= Escolha Sua Opcao:



if /i %op% == 1 ( call OFFICE.bat )
if /i %op% == 2 ( call REDE.bat )
if /i %op% == 3 ( call APP.bat )
if /i %op% == 4 (goto:encerrarsessao)
if /i %op% == 5 (goto:finalizarprograma) else (

echo.
echo ==================================================================
echo *                                                                *
echo *              ¦¦¦¦¦¦¦  ¦¦¦¦¦¦+   ¦¦¦¦¦¦+   ¦¦¦¦¦¦+              *
echo *              ¦¦+----  ¦¦+--¦¦   ¦¦+--¦¦¦  ¦+---¦¦+             *
echo *              ¦¦¦¦¦+   ¦¦¦¦¦¦+   ¦¦¦¦¦¦+¦  ¦¦   ¦¦¦             *
echo *              ¦¦+--+   ¦¦+--¦¦   ¦¦+--¦¦¦  ¦¦   ¦¦¦             * 
echo *              ¦¦¦¦¦¦¦  ¦¦¦  ¦¦   ¦¦¦  ¦¦+  ¦¦¦¦¦¦++             *
echo *              +------  +-+  +-+  +-+  +-+  +-----+              *
echo *                                                                *
echo ==================================================================

Pause 
goto:menu )


:encerrarsessao
echo.
set /p resp= Deseja realmente rencerrar sessao?[S/N]:
if /i %resp% == S ( call LOGIN.bat ) else ( goto:menu )


:finalizarprograma
echo.
set /p resp= Deseja realmente sair? [S/N]:
if /i %resp% == S (exit) else ( goto:menu )

		





                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    

