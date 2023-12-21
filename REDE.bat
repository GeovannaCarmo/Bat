@echo off
mod 60,30
color 09
:inicio
cls 
echo.
echo !@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!
echo #                                                           #
echo #       ¦¦¦¦¦¦+     ¦¦¦¦¦¦¦+    ¦¦¦¦¦¦+     ¦¦¦¦¦¦¦+        #  
echo #       ¦¦+--¦¦+    ¦¦+----+    ¦¦+--¦¦+    ¦¦+----+        #  
echo #       ¦¦¦¦¦¦++    ¦¦¦¦¦+      ¦¦¦  ¦¦¦    ¦¦¦¦¦+          #  
echo #       ¦¦+--¦¦+    ¦¦+--+      ¦¦¦  ¦¦¦    ¦¦+--+          #  
echo #       ¦¦¦  ¦¦¦    ¦¦¦¦¦¦¦+    ¦¦¦¦¦¦++    ¦¦¦¦¦¦¦+        #   
echo #       +-+  +-+    +------+    +-----+     +------+        #  
echo #                                                           # 
echo !@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!
echo.
echo !@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!  
echo #                                                           #
echo #                 [1] Testar conexao de Rede                #
echo #                 [2] Navegar na Internet                   #  
echo #                 [3] Obter o IP da Maquina                 #  
echo #                 [4] Voltar ao Menu Anterior               #  
echo #                 ---------------------------               #  
echo #                                                           # 
echo !@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!
echo.
echo.
set /p op= Digite a sua Opcao:
if %op% == 1 (goto:teste) 
if %op% == 2 (goto:web)
if %op% == 3 (goto:ip)
if %op% == 4 (goto:menu)
else (

echo.
echo !@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!
echo #                                                           # 
echo #            ¦¦¦¦¦¦¦  ¦¦¦¦¦¦+   ¦¦¦¦¦¦+   ¦¦¦¦¦¦+           #         
echo #            ¦¦+----  ¦¦+--¦¦   ¦¦+--¦¦¦  ¦+---¦¦+          #         
echo #            ¦¦¦¦¦+   ¦¦¦¦¦¦+   ¦¦¦¦¦¦+¦  ¦¦   ¦¦¦          #           
echo #            ¦¦+--+   ¦¦+--¦¦   ¦¦+--¦¦¦  ¦¦   ¦¦¦          #         
echo #            ¦¦¦¦¦¦¦  ¦¦¦  ¦¦   ¦¦¦  ¦¦+  ¦¦¦¦¦¦++          #         
echo #            +------  +-+  +-+  +-+  +-+  +-----+           #         
echo #                                                           #                   
echo !@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!

Pause  > nul 
goto inicio ) 

:teste
echo.
set /p testar=Digite o IP da maquina ou o endereço do Site:
ping %testar% -t
goto inicio 

:web
echo.
set /p site=Digite o endereco da pagina:
start %site%
goto inicio 


:ip
ipconfig 
pause
goto:inicio

:menu
echo.
set /p resp= Deseja retornar para o menu Principal? [S/N]
if /i %resp% == s ( call MENUPRINCIPAL.bat) else ( goto:inicio )