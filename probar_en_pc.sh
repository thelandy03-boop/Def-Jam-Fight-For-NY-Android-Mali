#!/usr/bin/env bash
# Script todo-en-uno para probar Def Jam en PC con Cage y Waydroid
set -euo pipefail

cd "$(dirname "$0")"

echo "=========================================================="
echo "    Iniciando prueba de Def Jam en PC (Waydroid + Cage)   "
echo "=========================================================="

# 1. Asegurar permisos de socket Wayland
rm -f /run/user/1000/wayland-0 /run/user/1000/wayland-0.lock 2>/dev/null || true

# 2. Comprobar si el contenedor Waydroid está corriendo
if ! waydroid status 2>/dev/null | grep -q "Container:.*RUNNING"; then
    echo ">> Iniciando contenedor Waydroid..."
    sudo systemctl start waydroid-container
    sleep 2
fi

# 3. Lanzar Cage con Waydroid en X11 en segundo plano si no está abierto
if ! waydroid status 2>/dev/null | grep -q "Session:.*RUNNING"; then
    echo ">> Lanzando Cage y Waydroid en tu monitor (DISPLAY :0.0)..."
    DISPLAY=:0.0 cage -- bash -c '
        waydroid session start &
        sleep 4
        waydroid show-full-ui
    ' > /tmp/cage.log 2>&1 &
    
    echo ">> Esperando a que arranque la interfaz gráfica..."
    sleep 6
fi

# 4. Instalar el APK más reciente (v1.1.1)
echo ">> Instalando APK v1.1.1 en Waydroid..."
waydroid app install "/home/landy/Descargas/app/Def-Jam-Android/DefJam-Mali-Edition-v1.1.1-Signed.apk"

# 5. Lanzar el juego directamente
echo ">> Abriendo Def Jam..."
waydroid app launch org.defjamffny.android

echo "=========================================================="
echo " ¡Listo! Mira la ventana de Cage que se abrió en tu monitor."
echo " Haz clic en PLAY para comenzar la partida."
echo "=========================================================="
