@echo off
echo ===========================
echo  CONFIGURANDO EL SISTEMA...
echo ===========================

:: Ir al directorio raíz del proyecto
cd /d "%~dp0.."

:: Inicializar Git (si no existe)
if not exist ".git" (
    git init
)

:: Configuración básica del usuario
git config user.name "TU_NOMBRE"
git config user.email "TU_EMAIL@example.com"

:: Rama principal como "main"
git branch -M main

:: Agregar el remoto (cambiar USER y REPO)
git remote remove origin >nul 2>&1
git remote add origin https://github.com/TU_USUARIO/TU_REPO.git

echo ===========================
echo  SETUP COMPLETADO
echo ===========================
pause
