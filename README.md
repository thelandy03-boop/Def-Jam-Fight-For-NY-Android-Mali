# Def Jam: Fight for NY - Android Native Port (Mali GPU & Compatibility Edition)

Edición y adaptación del port nativo de **Def Jam: Fight for NY** (ARM64) para Android, enfocado en solucionar problemas de estabilidad, cierres forzados (*crashes*) y compatibilidad gráfica en dispositivos con GPUs **ARM Mali** (SoCs MediaTek Helio/Dimensity, Exynos y Kirin), con pruebas específicas en **Tecno Spark 30C (Helio G81 / Mali-G52)**.

---

## 🚀 Descarga Rápida

* 📦 **APK Optimizado y Firmado (v1.1.3):** [Descargar DefJam-Mali-Edition-v1.1.3-Signed.apk](https://github.com/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/releases/download/v1.1.3/DefJam-Mali-Edition-v1.1.3-Signed.apk)
* 🏷️ **Último Release:** [Ver Release v1.1.3](https://github.com/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/releases/tag/v1.1.3)

---

## 📌 Diagnóstico y Soluciones Implementadas

1. **Vulkan Asíncrono (`--vk-async=0`)**:
   - *Problema:* El port original forzaba `--vk-async=1`. Los controladores de MediaTek para GPUs Mali Bifrost (Mali-G52) sufrían congelamientos y cierres forzados en `vulkan.mali.so`.
   - *Solución:* Modificado a modo síncrono `--vk-async=0`, garantizando estabilidad total sin sobrecargar las colas de la GPU.

2. **Auto-Actualización In-App Desatendida (`AppUpdater`)**:
   - *Función:* La app comprueba en segundo plano las nuevas versiones en GitHub Releases. Si encuentra una versión superior, descarga el paquete y se actualiza a sí misma en segundo plano sin obligar al usuario a reinstalar manualmente (compatible con Android 12, 13 y 14).

3. **Reportes Automáticos Silenciosos a GitHub (`CrashReporter`)**:
   - *Función:* En caso de fallo, recopila la ficha técnica completa del dispositivo, rutas de archivos y logcat reciente, y los envía de forma 100% silenciosa a **GitHub Issues**.
   - *Privacidad y facilidad:* **El usuario no necesita tener cuenta ni aplicación de GitHub**; la app se comunica de forma autónoma con la API de GitHub usando su clave interna ofuscada.

4. **AutoSetup Inteligente de Archivos (`AutoSetup`)**:
   - *Problema:* Los dumps de MediaFire suelen extraerse como `Def Jam Fight For Droidport `, rompiendo la ruta que espera el motor (`game/default.xbe`).
   - *Solución:* La app escanea automáticamente el almacenamiento (incluyendo `Download/` y `DefJamFFNY/`), localiza `default.xbe` y configura los archivos en la carpeta correcta sin requerir renombrado manual.

5. **Solicitud Automática de Permisos (Android 11 a 14 / HiOS)**:
   - *Problema:* En Android 13/14, las apps no pueden leer la memoria interna sin el permiso `MANAGE_EXTERNAL_STORAGE`.
   - *Solución:* La app detecta automáticamente al iniciar si falta el permiso y abre directamente la pantalla de ajustes del sistema para concederlo en un solo toque.

6. **Memoria Optimizada (`largeHeap="true"`)**:
   - Habilitado el flag de memoria extendida en el `AndroidManifest.xml` para prevenir cierres por falta de RAM en multitarea.

7. **Reproducción Nativa del Logo de EA Games y Transición Fluida (v1.1.3)**:
   - *Problema:* Al reproducir videos de inicio (`movies/eagames.mad`), el stream se congelaba indefinidamente porque el motor en ARM64 no recibía las banderas atómicas de cierre de stream (`field_24 == 0` y `field_21 == 1`), impidiendo destruir el decoder y transicionar a `movies/thx.mad` y a la pantalla de título.
   - *Solución:* Parche quirúrgico de 19 instrucciones en ARM64 (`sub_00077020`) que detecta el fin de fotogramas, fuerza atómicamente el estado de cierre del stream y resetea el contador con instrucciones de 64 bits, permitiendo que el logo de EA Games se reproduzca con audio completo y transicione fluidamente hacia THX y la pantalla de inicio.

---

## 🎯 Plan de Trabajo (Mali Compatibility Fix) — ESTADO

- [x] **Conexión y preparación del repositorio**: Git configurado con exclusiones seguras (`.gitignore`) para no versionar dumps pesados de 2.4 GB.
- [x] **Ingeniería inversa y toolchain**: Desensamblado completo y validación del pipeline (`apktool` + `aapt2` + `zipalign` + `apksigner`).
- [x] **Parche de Vulkan Mali**: Modificar argumentos de arranque en `DefJamActivity.smali` (`--vk-async=0`, optimización de hilos de vértices).
- [x] **Auto-detección de carpeta del juego**: Módulo `AutoSetup` integrado para detectar y vincular carpetas automáticamente.
- [x] **Permisos automáticos Android 14**: Integrada solicitud directa del permiso de acceso a todos los archivos al iniciar.
- [x] **Reproducción nativa del logo de EA Games (v1.1.3)**: Corrección de la máquina de estados de video en ARM64 para reproducir la intro y transicionar a THX y menú.
- [x] **Build y firma del APK final**: Compilado, alineado a 4 bytes y firmado con esquema v3, probado en vivo en Android Móvil y subido a GitHub Releases.

---

## 📱 Guía de Instalación en Celulares (Tecno Spark 30C y Mali)

1. **Instalar el APK:**
   Descarga e instala [DefJam-Mali-Edition-v1.1.3-Signed.apk](https://github.com/thelandy03-boop/Def-Jam-Fight-For-NY-Android-Mali/releases/download/v1.1.3/DefJam-Mali-Edition-v1.1.3-Signed.apk).
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
