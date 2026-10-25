# Def Jam: Fight for NY - Android Native Port (Mali GPU & Compatibility Edition)

Edición y adaptación del port nativo de **Def Jam: Fight for NY** (ARM64) para Android, enfocado en solucionar problemas de estabilidad, cierres forzados (*crashes*) y compatibilidad gráfica en dispositivos con GPUs **ARM Mali** (SoCs MediaTek Helio/Dimensity, Exynos y Kirin), con pruebas específicas en **Tecno Spark 30C (Helio G81 / Mali-G52)**.

---

## 🚀 Descarga Rápida

* 📦 **APK Optimizado y Firmado (v1.0.0):** [Descargar DefJam-Mali-Edition-Signed.apk](https://github.com/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/releases/download/v1.0.0/DefJam-Mali-Edition-Signed.apk)
* 🏷️ **Último Release:** [Ver Release v1.0.0](https://github.com/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/releases/tag/v1.0.0)

---

## 📌 Diagnóstico y Soluciones Implementadas

1. **Vulkan Asíncrono (`--vk-async=0`)**:
   - *Problema:* El port original forzaba `--vk-async=1`. Los controladores de MediaTek para GPUs Mali Bifrost (Mali-G52) sufrían congelamientos y cierres forzados en `vulkan.mali.so`.
   - *Solución:* Modificado a modo síncrono `--vk-async=0`, garantizando estabilidad total sin sobrecargar las colas de la GPU.

2. **AutoSetup Inteligente de Archivos (`AutoSetup`)**:
   - *Problema:* Los dumps de MediaFire suelen extraerse como `Def Jam Fight For Droidport `, rompiendo la ruta que espera el motor (`game/default.xbe`).
   - *Solución:* La app escanea automáticamente el almacenamiento (incluyendo `Download/` y `DefJamFFNY/`), localiza `default.xbe` y configura los archivos en la carpeta correcta sin requerir renombrado manual.

3. **Solicitud Automática de Permisos (Android 11 a 14 / HiOS)**:
   - *Problema:* En Android 13/14, las apps no pueden leer la memoria interna sin el permiso `MANAGE_EXTERNAL_STORAGE`.
   - *Solución:* La app detecta automáticamente al iniciar si falta el permiso y abre directamente la pantalla de ajustes del sistema para concederlo en un solo toque.

4. **CrashReporter y Logs de Diagnóstico**:
   - Se integró un manejador global de excepciones que registra información del dispositivo (modelo, CPU, GPU, versión de Android, rutas y logcat reciente) y genera el archivo `DefJamFFNY/defjam_crash.log`.
   - Enlace directo con un clic para abrir un reporte pre-llenado en **GitHub Issues**.

5. **Memoria Optimizada (`largeHeap="true"`)**:
   - Habilitado el flag de memoria extendida en el `AndroidManifest.xml` para prevenir cierres por falta de RAM en multitarea.

---

## 🎯 Plan de Trabajo (Mali Compatibility Fix) — ESTADO

- [x] **Conexión y preparación del repositorio**: Git configurado con exclusiones seguras (`.gitignore`) para no versionar dumps pesados de 2.4 GB.
- [x] **Ingeniería inversa y toolchain**: Desensamblado completo y validación del pipeline (`apktool` + `aapt2` + `zipalign` + `apksigner`).
- [x] **Parche de Vulkan Mali**: Modificar argumentos de arranque en `DefJamActivity.smali` (`--vk-async=0`, optimización de hilos de vértices).
- [x] **Auto-detección de carpeta del juego**: Módulo `AutoSetup` integrado para detectar y vincular carpetas automáticamente.
- [x] **Permisos automáticos Android 14**: Integrada solicitud directa del permiso de acceso a todos los archivos al iniciar.
- [x] **Build y firma del APK final**: Compilado, alineado a 4 bytes y firmado con esquema v3, probado en vivo en Android Móvil y subido a GitHub Releases.

---

## 📱 Guía de Instalación en Celulares (Tecno Spark 30C y Mali)

1. **Instalar el APK:**
   Descarga e instala [DefJam-Mali-Edition-Signed.apk](https://github.com/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/releases/download/v1.0.0/DefJam-Mali-Edition-Signed.apk).
2. **Permisos:**
   Al abrir la app por primera vez, se abrirá la ventana de ajustes del sistema. Selecciona **"Permitir administrar todos los archivos"**.
3. **Copiar los datos del juego (2.3 GB):**
   Copia la carpeta de datos (`Def Jam Fight For Droidport ` o los archivos descomprimidos) a tu memoria interna dentro de:
   ```text
   Almacenamiento Interno / DefJamFFNY / game /
   ```
   *(Si la dejaste con el nombre original `Def Jam Fight For Droidport `, la app la detectará sola gracias a `AutoSetup`).*
4. **Ajustes recomendados en el Launcher:**
   * **Scale:** 1x (o 0.75x para 30 FPS estables en peleas de 4).
   * **Async Render:** OFF (por defecto).
   * **FXAA:** OFF.
   * **FPS Limit:** 30 FPS.
   * Pulsa **PLAY**.

---

## 🛠️ Estructura del Repositorio

* `android-port/`: Código fuente Smali desensamblado, recursos, manifest y clases agregadas (`AutoSetup`, `CrashReporter`).
* `arrancar_cage.sh`: Script para pruebas y emulación en Linux con Cage + Waydroid en sesión X11.
* `instalar_en_waydroid.sh`: Script de aprovisionamiento de datos para Waydroid.
