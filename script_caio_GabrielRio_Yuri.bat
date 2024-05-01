@echo off
cls
:menu
cls
color 0a

date /t
time /t
echo.

echo Computador: %computername%        Usuario: %username%
echo.
                   
echo            MENU TAREFAS
echo.
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Gerenciador de Tarefas        *
echo * 3. Escanear Disco Local          *
echo * 4. Abrir Painel de Controle      *
echo * 5. Exibir Versao do windows      *
echo * 6. Abrir Servicos                *
echo * 7. Abrir CMD                     *
echo * 8. Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% GEQ 8 goto opcao8

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada         *
echo ==================================
pause
goto menu

:opcao2
cls
Taskmgr.exe
echo ==================================
echo *      Gerenciador de Tarefas    *
echo ==================================
pause
goto menu

:opcao3
cls
echo ==================================
echo *     Escaneamento de disco      *
echo ==================================
chkdsk c:
pause
goto menu

:opcao4
cls
echo ==================================
echo *     Painel de control          *
echo ==================================
control.exe
pause
goto menu

:opcao5
cls
echo ==================================
echo *     Versao do windows          *
echo ==================================
winver.exe
pause
goto menu

:opcao6
cls
echo ==================================
echo *         Servicos               *
echo ==================================
services.msc
pause
goto menu

:opcao7
cls
echo ==================================
echo *         Abrindo CMD            *
echo ==================================
cmd.exe
pause
goto menu


:opcao8
cls
exit

:opcao9
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu