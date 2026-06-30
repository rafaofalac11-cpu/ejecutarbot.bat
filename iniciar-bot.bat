@echo off
title Aquiles Bot
mode con cols=60 lines=5
echo ========================================
echo     Aquiles Bot - Control Remoto
echo ========================================
echo.

if not exist "aquiles-client-1.0.0.jar" (
    echo ERROR: No se encuentra aquiles-client-1.0.0.jar
    echo Coloca este .bat junto al .jar
    pause
    exit /b 1
)

where java >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    if not "%JAVA_HOME%" == "" (
        set JAVA="%JAVA_HOME%\bin\java.exe"
    ) else (
        echo ERROR: Java no encontrado. Instala Java 17 o superior.
        pause
        exit /b 1
    )
) else (
    set JAVA=java
)

echo Iniciando bot...
%JAVA% -jar "aquiles-client-1.0.0.jar"
pause
