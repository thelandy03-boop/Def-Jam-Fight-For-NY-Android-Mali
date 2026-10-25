#!/usr/bin/env bash
# Script para arrancar Waydroid Móvil con Cage en X11
set -euo pipefail

echo "==============================================="
echo "   Iniciando Waydroid Móvil con Cage en X11   "
echo "==============================================="

# Asegurar que el socket viejo no bloquee
rm -f /run/user/1000/wayland-0 /run/user/1000/wayland-0.lock 2>/dev/null || true

# Ejecutar Cage como compositor Wayland sobre X11
echo "Lanzando Cage..."
cage -- bash -c '
    if ! waydroid status 2>/dev/null | grep -q "Session:.*RUNNING"; then
        echo "Iniciando sesión de Waydroid..."
        waydroid session start &
        sleep 4
    fi
    echo "Abriendo interfaz móvil de Android..."
    waydroid show-full-ui
'
