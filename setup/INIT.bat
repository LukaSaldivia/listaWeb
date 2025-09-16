@echo off
echo ===========================
echo  CONFIGURANDO EL SISTEMA...
echo ===========================

cd /d "%~dp0.."

if not exist ".git" (
    git init
)

:: Config usuario
git config user.name "TU_NOMBRE"
git config user.email "TU_EMAIL@example.com"

git branch -M main

:: Agregar remoto con HTTPS (para PAT)
git remote remove origin >nul 2>&1
git remote add origin https://github.com/TU_USUARIO/TU_REPO.git

:: Guardar credenciales con Credential Manager
git config --global credential.helper manager

echo ===========================
echo  SETUP COMPLETADO
echo  Proximo paso:
echo  1) Generar PAT en GitHub
echo  2) La primera vez que hagas git push, usar:
echo     - Username: TU_USUARIO
echo     - Password: EL PAT
echo ===========================
pause
