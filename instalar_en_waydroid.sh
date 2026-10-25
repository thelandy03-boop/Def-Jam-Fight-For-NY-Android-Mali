#!/usr/bin/env bash
set -euo pipefail

APK_PATH="/home/landy/Descargas/app/Def-Jam-Android/DefJam-Mali-Edition-Signed.apk"
GAME_DIR="/home/landy/Descargas/app/Def-Jam-Android/Def Jam Fight For Droidport "
WAYDROID_STORAGE="/home/landy/.local/share/waydroid/data/media/0/DefJamFFNY"

echo "=========================================================="
echo "    Instalando Def Jam (Edición Mali) en Waydroid         "
echo "=========================================================="

# 1. Copiar datos del juego al almacenamiento de Waydroid
echo ">> Copiando archivos del juego (2.3 GB) a Waydroid..."
mkdir -p "$WAYDROID_STORAGE"
if [ ! -d "$WAYDROID_STORAGE/game" ]; then
    echo ">> Creando copia de datos en $WAYDROID_STORAGE/game..."
    cp -r "$GAME_DIR" "$WAYDROID_STORAGE/game"
else
    echo ">> Los datos ya existen en $WAYDROID_STORAGE/game"
fi

# 2. Instalar el APK en Waydroid
echo ">> Instalando APK firmado..."
if waydroid status | grep -q "Session:.*RUNNING"; then
    waydroid app install "$APK_PATH"
    echo ">> ¡Instalación completada con éxito!"
else
    echo ">> AVISO: Waydroid no está en ejecución."
    echo ">> Primero inicia Waydroid con ./arrancar_cage.sh y luego corre este script."
fi
