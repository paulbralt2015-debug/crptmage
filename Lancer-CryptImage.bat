@echo off
setlocal
cd /d "%~dp0"
set "JAR=%~dp0target\cryptimage-1.9.1-SNAPSHOT_universal-jar-with-dependencies.jar"
if not exist "%JAR%" (
  echo Fichier CryptImage introuvable.
  echo Compilez d'abord le projet avec : mvn clean package
  pause
  exit /b 1
)
java -jar "%JAR%"
if errorlevel 1 (
  echo.
  echo CryptImage s'est termine avec une erreur.
  pause
)
endlocal
