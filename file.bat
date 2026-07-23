@echo off
title Otimizador de Servidor Minecraft

echo ================================================
echo        OTIMIZADOR DE SERVIDOR MINECRAFT
echo ================================================
echo.
echo [1] Otimizacao para PC Fraco (1-2GB RAM)
echo [2] Otimizacao para PC Medio (3-4GB RAM)
echo [3] Otimizacao para PC Potente (5-8GB RAM)
echo [4] Otimizacao para Servidor Dedicado (8GB+ RAM)
echo [5] Sair
echo.
set /p opcao="Escolha uma opcao (1-5): "

if "%opcao%"=="1" goto fraco
if "%opcao%"=="2" goto medio
if "%opcao%"=="3" goto potente
if "%opcao%"=="4" goto dedicado
if "%opcao%"=="5" exit
goto erro

:fraco
echo.
echo ================================================
echo        INICIANDO MODO PC FRACO (1-2GB)
echo ================================================
set memoria=1024M
set arg1=-Xms512M
set arg2=-Xmx1024M
set arg3=-XX:+UseG1GC
set arg4=-XX:+ParallelRefProcEnabled
set arg5=-XX:MaxGCPauseMillis=50
set arg6=-XX:+UnlockExperimentalVMOptions
set arg7=-XX:+DisableExplicitGC
set arg8=-XX:+AlwaysPreTouch
set arg9=-XX:G1NewSizePercent=30
set arg10=-XX:G1MaxNewSizePercent=40
set arg11=-XX:G1HeapRegionSize=8M
set arg12=-XX:G1ReservePercent=20
set arg13=-XX:G1HeapWastePercent=5
set arg14=-XX:G1MixedGCCountTarget=4
set arg15=-XX:InitiatingHeapOccupancyPercent=15
set arg16=-XX:G1MixedGCLiveThresholdPercent=90
set arg17=-XX:G1RSetUpdatingPauseTimePercent=5
set arg18=-XX:SurvivorRatio=32
set arg19=-XX:+PerfDisableSharedMem
set arg20=-XX:MaxTenuringThreshold=1
set arg21=-Dusing.aikars.flags=https://mcflags.emc.gs
set arg22=-Daikars.new.flags=true
goto iniciar

:medio
echo.
echo ================================================
echo        INICIANDO MODO PC MEDIO (3-4GB)
echo ================================================
set memoria=2048M
set arg1=-Xms1024M
set arg2=-Xmx2048M
set arg3=-XX:+UseG1GC
set arg4=-XX:+ParallelRefProcEnabled
set arg5=-XX:MaxGCPauseMillis=50
set arg6=-XX:+UnlockExperimentalVMOptions
set arg7=-XX:+DisableExplicitGC
set arg8=-XX:+AlwaysPreTouch
set arg9=-XX:G1NewSizePercent=30
set arg10=-XX:G1MaxNewSizePercent=40
set arg11=-XX:G1HeapRegionSize=8M
set arg12=-XX:G1ReservePercent=20
set arg13=-XX:G1HeapWastePercent=5
set arg14=-XX:G1MixedGCCountTarget=4
set arg15=-XX:InitiatingHeapOccupancyPercent=15
set arg16=-XX:G1MixedGCLiveThresholdPercent=90
set arg17=-XX:G1RSetUpdatingPauseTimePercent=5
set arg18=-XX:SurvivorRatio=32
set arg19=-XX:+PerfDisableSharedMem
set arg20=-XX:MaxTenuringThreshold=1
set arg21=-Dusing.aikars.flags=https://mcflags.emc.gs
set arg22=-Daikars.new.flags=true
goto iniciar

:potente
echo.
echo ================================================
echo        INICIANDO MODO PC POTENTE (5-8GB)
echo ================================================
set memoria=4096M
set arg1=-Xms2048M
set arg2=-Xmx4096M
set arg3=-XX:+UseG1GC
set arg4=-XX:+ParallelRefProcEnabled
set arg5=-XX:MaxGCPauseMillis=50
set arg6=-XX:+UnlockExperimentalVMOptions
set arg7=-XX:+DisableExplicitGC
set arg8=-XX:+AlwaysPreTouch
set arg9=-XX:G1NewSizePercent=30
set arg10=-XX:G1MaxNewSizePercent=40
set arg11=-XX:G1HeapRegionSize=16M
set arg12=-XX:G1ReservePercent=20
set arg13=-XX:G1HeapWastePercent=5
set arg14=-XX:G1MixedGCCountTarget=4
set arg15=-XX:InitiatingHeapOccupancyPercent=15
set arg16=-XX:G1MixedGCLiveThresholdPercent=90
set arg17=-XX:G1RSetUpdatingPauseTimePercent=5
set arg18=-XX:SurvivorRatio=32
set arg19=-XX:+PerfDisableSharedMem
set arg20=-XX:MaxTenuringThreshold=1
set arg21=-Dusing.aikars.flags=https://mcflags.emc.gs
set arg22=-Daikars.new.flags=true
goto iniciar

:dedicado
echo.
echo ================================================
echo        INICIANDO MODO SERVIDOR DEDICADO (8GB+)
echo ================================================
set memoria=8192M
set arg1=-Xms4096M
set arg2=-Xmx8192M
set arg3=-XX:+UseG1GC
set arg4=-XX:+ParallelRefProcEnabled
set arg5=-XX:MaxGCPauseMillis=50
set arg6=-XX:+UnlockExperimentalVMOptions
set arg7=-XX:+DisableExplicitGC
set arg8=-XX:+AlwaysPreTouch
set arg9=-XX:G1NewSizePercent=40
set arg10=-XX:G1MaxNewSizePercent=50
set arg11=-XX:G1HeapRegionSize=16M
set arg12=-XX:G1ReservePercent=25
set arg13=-XX:G1HeapWastePercent=5
set arg14=-XX:G1MixedGCCountTarget=4
set arg15=-XX:InitiatingHeapOccupancyPercent=15
set arg16=-XX:G1MixedGCLiveThresholdPercent=90
set arg17=-XX:G1RSetUpdatingPauseTimePercent=5
set arg18=-XX:SurvivorRatio=32
set arg19=-XX:+PerfDisableSharedMem
set arg20=-XX:MaxTenuringThreshold=1
set arg21=-Dusing.aikars.flags=https://mcflags.emc.gs
set arg22=-Daikars.new.flags=true
goto iniciar

:erro
echo.
echo ================================================
echo        OPCAO INVALIDA! TENTE NOVAMENTE.
echo ================================================
timeout /t 3 >nul
start optimize.bat
exit

:iniciar
echo.
echo ================================================
echo        INICIANDO SERVIDOR COM %memoria% DE RAM
echo ================================================
echo.
echo Parametros aplicados:
echo - %arg1%
echo - %arg2%
echo - %arg3%
echo - %arg4%
echo - %arg5%
echo - %arg6%
echo - %arg7%
echo - %arg8%
echo - %arg9%
echo - %arg10%
echo - %arg11%
echo - %arg12%
echo - %arg13%
echo - %arg14%
echo - %arg15%
echo - %arg16%
echo - %arg17%
echo - %arg18%
echo - %arg19%
echo - %arg20%
echo - %arg21%
echo - %arg22%
echo.
echo Pressione qualquer tecla para iniciar...
pause >nul

java %arg1% %arg2% %arg3% %arg4% %arg5% %arg6% %arg7% %arg8% %arg9% %arg10% %arg11% %arg12% %arg13% %arg14% %arg15% %arg16% %arg17% %arg18% %arg19% %arg20% %arg21% %arg22% -jar server.jar nogui

pause
