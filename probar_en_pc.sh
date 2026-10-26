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
if ! systemctl is-active --quiet waydroid-container 2>/dev/null; then
    echo ">> Iniciando contenedor Waydroid..."
    sudo systemctl start waydroid-container
    sleep 2
fi

# 3. Lanzar Cage con Waydroid en X11 en segundo plano si no está abierto
if ! pgrep -x cage >/dev/null 2>&1; then
    echo ">> Limpiando sesión previa si existía..."
    python3 -c "import dbus; bus = dbus.SystemBus(); obj = bus.get_object('id.waydro.Container', '/ContainerManager'); iface = dbus.Interface(obj, 'id.waydro.ContainerManager'); iface.Stop(True)" 2>/dev/null || true
    waydroid session stop 2>/dev/null || true
    sleep 1
    rm -f /run/user/1000/wayland-0 /run/user/1000/wayland-0.lock 2>/dev/null || true
    rm -f /tmp/cage.log 2>/dev/null || true

    echo ">> Lanzando Cage y Waydroid en tu monitor (DISPLAY :0.0)..."
    DISPLAY=:0.0 cage -- bash -c '
        waydroid session start &
        sleep 4
        waydroid show-full-ui &
        wait
    ' > /tmp/cage.log 2>&1 &
    
fi

echo ">> Esperando a que el sistema Android arranque completamente (15-25s)..."
for i in {1..40}; do
    if grep -q "Android with user 0 is ready" /tmp/cage.log 2>/dev/null; then
        echo ">> ¡Android iniciado con éxito!"
        sleep 2
        break
    fi
    sleep 1
done

# 4. Instalar el APK más reciente (v1.1.3)
echo ">> Instalando APK v1.1.3 en Waydroid..."
waydroid app install "/home/landy/Descargas/app/Def-Jam-Android/DefJam-Mali-Edition-v1.1.3-Signed.apk"

# 5. Lanzar el juego directamente
echo ">> Abriendo Def Jam..."
waydroid app launch org.defjamffny.android

echo "=========================================================="
echo " ¡Listo! Mira la ventana de Cage que se abrió en tu monitor."
echo " Haz clic en PLAY para comenzar la partida."
echo "=========================================================="
