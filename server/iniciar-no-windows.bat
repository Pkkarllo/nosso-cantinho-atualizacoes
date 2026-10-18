@echo off
setlocal
cd /d "%~dp0"

docker info >nul 2>&1
if errorlevel 1 (
  echo Abra o Docker Desktop e espere ele iniciar.
  pause
  exit /b 1
)

docker compose -f docker-compose.windows.yml up -d
if errorlevel 1 (
  echo Nao foi possivel iniciar. Confira se o Docker Desktop esta aberto.
  pause
  exit /b 1
)

echo.
echo Servidor iniciado. Copie o endereco https://...trycloudflare.com exibido abaixo.
echo Este endereco muda se o tunel for reiniciado.
echo.
docker compose -f docker-compose.windows.yml logs -f tunnel
